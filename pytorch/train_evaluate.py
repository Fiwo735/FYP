import os
import sys
import torch
import torch.nn as nn
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sn

# from tracemalloc import start
from h5py import File as hdf5_file
from contextlib import redirect_stdout
from torch.nn.functional import one_hot
from argparse import ArgumentParser
from pathlib import Path
from typing import Tuple, Optional, List
from torch.utils.data import TensorDataset, DataLoader
from sklearn.datasets import fetch_openml
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder, StandardScaler, normalize
from sklearn.metrics import roc_curve, auc, roc_auc_score
from tqdm import tqdm
from time import time
from fvcore.nn import FlopCountAnalysis
from scipy import interpolate
from qtorch.optim import OptimLP

from model.net import ConstituentNet
from model.quant_brevitas import ConstituentNetQuantBrevitas
from model.quant_qpytorch import ConstituentNetQuantQPyTorch
from model.quant_qpytorch import WEIGHT_QUANT, GRAD_QUANT, MOMENTUM_QUANT, ACC_QUANT

DEVICE = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

DIR_NAME = os.path.dirname(__file__)
DATA_DIR = os.path.join(DIR_NAME, 'data/1/')
DATA_30_DIR = os.path.join(DIR_NAME, 'data/30/')


X_TRAIN_FILENAMES = {
  1: os.path.join(DATA_DIR, 'X_train_val.npy'),
  30: os.path.join(DATA_30_DIR, 'X_train.npy'),
}

Y_TRAIN_FILENAMES = {
  1: os.path.join(DATA_DIR, 'y_train_val.npy'),
  30: os.path.join(DATA_30_DIR, 'y_train.npy'),
}

X_TEST_FILENAMES = {
  1: os.path.join(DATA_DIR, 'X_test.npy'),
  30: os.path.join(DATA_30_DIR, 'X_test.npy'),
}

Y_TEST_FILENAMES = {
  1: os.path.join(DATA_DIR, 'y_test.npy'),
  30: os.path.join(DATA_30_DIR, 'y_test.npy'),
}

CLASSES_FILENAMES = {
  1: os.path.join(DATA_DIR, 'classes.npy'),
}

CLASSES = ['Gluon', 'Light quark', 'W boson', 'Z boson', 'Top quark']

def set_seed(seed=0):
  np.random.seed(seed)
  torch.manual_seed(seed)


def fetch_dataset() -> None:
  X, y = fetch_openml('hls4ml_lhc_jets_hlf', cache=True, return_X_y=True)
  assert len(X) == len(y)

  le = LabelEncoder()
  y = le.fit_transform(y)
  y = torch.from_numpy(y)
  X_train_val, X_test, y_train_val, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

  scaler = StandardScaler()
  X_train_val = scaler.fit_transform(X_train_val)
  X_test = scaler.transform(X_test)

  np.save(X_TRAIN_FILENAMES[1], X_train_val)
  np.save(X_TEST_FILENAMES[1], X_test)
  np.save(Y_TRAIN_FILENAMES[1], y_train_val)
  np.save(Y_TEST_FILENAMES[1], y_test)
  np.save(CLASSES_FILENAMES[1], le.classes_)

  print('Fetched 1-particle dataset')


def fetch_h5_dataset(dir_name: str, num_particles: int) -> Tuple[np.array, np.array]:
  X = np.empty(shape=(0, num_particles, 16), dtype=np.float16)
  y = np.empty(shape=(0), dtype=np.float16)

  pathlist = Path(dir_name).rglob('*.h5')
  files_num = len([name for name in os.listdir(dir_name) if os.path.isfile(name)])

  with tqdm(pathlist, unit='samples chunk', total=files_num) as t_pathlist:
    mode = dir_name.split('/')[-2]
    t_pathlist.set_description(f'{mode}')
    for file_path in t_pathlist:

      with hdf5_file(file_path) as f:
        jetConstituentList = np.array(f['jetConstituentList'])
        jets = np.array(f['jets'])
        target = np.argmax(jets[:,-6:-1], axis=1)

        # print(f'{jetConstituentList[5,:,:]=}')
        # print(f'{jets[5,:]=}')
        # print(f'{target[5]=}')
        # print(f'{jetConstituentList.shape=}')
        # print(f'{jets.shape=}')
        # print(f'{target.shape=}')

        X = np.concatenate((X, jetConstituentList), axis=0, dtype=np.float16)
        y = np.concatenate((y, target), axis=0, dtype=np.float16)

  return X, y


def fetch_N_dataset(num_particles: int) -> None:

  assert num_particles == 30, 'Only paths for 30-particles dataset implemented yet'

  X_train, y_train = fetch_h5_dataset(dir_name=f'pytorch/data/{num_particles}/train/', num_particles=num_particles)
  assert X_train.shape[0] == y_train.shape[0], f'{X_train.shape[0]=}, {y_train.shape[0]=}'
  np.save(X_TRAIN_FILENAMES[num_particles], X_train)
  np.save(Y_TRAIN_FILENAMES[num_particles], y_train)

  X_test, y_test = fetch_h5_dataset(dir_name=f'pytorch/data/{num_particles}/val/', num_particles=num_particles)
  assert X_test.shape[0] == y_test.shape[0]
  np.save(X_TEST_FILENAMES[num_particles], X_test)
  np.save(Y_TEST_FILENAMES[num_particles], y_test)

  print('Fetched 30-particles dataset')
  

def load_dataset(
  num_particles: int,
  x_type: str,
  batch_size: int = 128,
  tiny_size: int = 1,
) -> Tuple[DataLoader, DataLoader, DataLoader, List[str]]:

  X_train_val = np.load(X_TRAIN_FILENAMES[num_particles])
  X_test = np.ascontiguousarray(np.load(X_TEST_FILENAMES[num_particles]))
  y_train_val = np.load(Y_TRAIN_FILENAMES[num_particles])
  y_test = np.load(Y_TEST_FILENAMES[num_particles], allow_pickle=True)

  if num_particles == 1:
    classes = np.load(CLASSES_FILENAMES[num_particles], allow_pickle=True)
  else:
    classes = ['Gluon', 'Light_quarks', 'W_boson', 'Z_boson', 'Top_quark']

  # X tensors
  tensor_X_train_val = torch.Tensor(X_train_val)
  tensor_X_test = torch.Tensor(X_test)

  if x_type == 'float64':
    tensor_X_train_val = tensor_X_train_val.type(torch.DoubleTensor)
    tensor_X_test = tensor_X_test.type(torch.DoubleTensor)
  elif x_type == 'float32':
    tensor_X_train_val = tensor_X_train_val.type(torch.FloatTensor)
    tensor_X_test = tensor_X_test.type(torch.FloatTensor)
  elif x_type == 'float16':
    tensor_X_train_val = tensor_X_train_val.type(torch.HalfTensor)
    tensor_X_test = tensor_X_test.type(torch.HalfTensor)
  elif x_type == 'bfloat16':
    tensor_X_train_val = tensor_X_train_val.type(torch.BFloat16Tensor)
    tensor_X_test = tensor_X_test.type(torch.BFloat16Tensor)
  else:
    raise TypeError(f'Unrecognized tensor type: {x_type}')

  if num_particles == 1:
    tensor_X_train_val = tensor_X_train_val.unsqueeze(dim=1)
    tensor_X_test = tensor_X_test.unsqueeze(dim=1)

  # Y tensors
  tensor_y_train_val = torch.Tensor(y_train_val)
  tensor_y_test = torch.Tensor(y_test)

  tensor_y_train_val = tensor_y_train_val.type(torch.LongTensor)
  tensor_y_test = tensor_y_test.type(torch.LongTensor)

  # Data loaders
  train_loader = DataLoader(
    TensorDataset(tensor_X_train_val, tensor_y_train_val),
    batch_size=batch_size
  )

  test_loader = DataLoader(
    TensorDataset(tensor_X_test, tensor_y_test),
    batch_size=batch_size
  )

  # Tiny loaders
  if num_particles == 1:
    tiny_tensor_X_test = tensor_X_test[:tiny_size+1,:,:]

    tiny_loader = DataLoader(
      TensorDataset(tiny_tensor_X_test, tensor_y_test[:tiny_size+1]),
      batch_size=1
    )

  else:
    assert tiny_size <= num_particles
    tiny_tensor_X_test = tensor_X_test[:1,:tiny_size+1,:]

    tiny_loader = DataLoader(
      TensorDataset(tiny_tensor_X_test, tensor_y_test[:1]),
      batch_size=1
    )

  return train_loader, test_loader, tiny_loader, classes


def get_GPU_memory_usage(is_brief: bool = True) -> str:
  t = torch.cuda.get_device_properties(0).total_memory / (1024 ** 3)
  r = torch.cuda.memory_reserved(0) / (1024 ** 2)
  a = torch.cuda.memory_allocated(0)  / (1024 ** 2)
  full_info = f'Memory: total={t:.2f} GiB, reserved={r:.2f} MiB, allocated={a:.2f} MiB, free={r-a:.2f} Mib'
  brief_info = f'Memory (Mib): res={r:.2f}, all={a:.2f}, free={r-a:.2f}'
  return brief_info if is_brief else full_info


def train_test_loop(
  loader: DataLoader,
  model: nn.Module,
  criterion: nn.Module,
  optimizer: Optional[nn.Module] = None,
  is_train: bool = True,
  num_particles: int = 1,
  num_epochs: int = 5,
  print_predictions: bool = False,
  secondary_loader: Optional[DataLoader] = None,
  model_path: Optional[str] = None,
  script_path: Optional[str] = None,
  state_path: Optional[str] = None,
  quant: Optional[bool] = None,
) -> Tuple[Optional[float], float, Tuple[List[float], List[float], List[float]]]:

  is_eval = not is_train

  if is_train:
    model.train()
  else:
    model.eval()
    num_epochs = 1

  loader_length = len(loader)
  batch_size = loader.batch_size

  all_data = []
  all_labels = []
  all_predicted = []
  accuracy = None

  start_time = time()
  for epoch in range(num_epochs):
    with tqdm(loader, unit='batch', disable=is_eval) as tepoch:
      prefix = 'Training' if is_train else 'Testing'
      tepoch.set_description(f'{prefix} epoch {epoch+1}/{num_epochs}')
      for idx, (data, labels) in enumerate(tepoch):

        # if num_particles == 1:
        #   data = torch.unsqueeze(data, dim=1)

        if is_eval:
          all_data.append(data.detach())

        labels = labels.to(DEVICE)
        data = data.to(DEVICE)

        predicted = model(data)
        loss = criterion(predicted, labels)

        if is_train:
          optimizer.zero_grad()
          loss.backward()
          optimizer.step()
        else:
          all_labels.append(labels.detach().cpu())
          all_predicted.append(predicted.detach().cpu())

        # if idx > 100:
        #   break

        if idx % 128 == 0:
          tepoch.set_postfix(loss=loss.item() / batch_size)

        # if idx == loader_length - 2: # issue with ConsitutentNet mean/var summation with last batch
        #   break

    # Temporary evaluation after each epoch
    ##############
    if secondary_loader is not None:
      # print(f'Evaluating on test dataset...')
      e_all_data = []
      e_all_labels = []
      e_all_predicted = []
      e_accuracy = None
      e_loader_length = len(secondary_loader)
      model.eval()
      for idx, (data, labels) in enumerate(secondary_loader):

        # if num_particles == 1:
        #   data = torch.unsqueeze(data, dim=1)

        e_all_data.append(data.detach())

        labels = labels.to(DEVICE)
        data = data.to(DEVICE)

        predicted = model(data)
        loss = criterion(predicted, labels)

        e_all_labels.append(labels.detach().cpu())
        e_all_predicted.append(predicted.detach().cpu())

        # if idx > 100:
        #   break

        # if idx == loader_length - 128: # issue with ConsitutentNet mean/var summation with last batch
        #   break

      model.train()
      e_all_labels = torch.stack(e_all_labels) if len(e_all_labels) == 1 else torch.stack(e_all_labels[:-1])
      e_all_predicted = torch.stack(e_all_predicted) if len(e_all_predicted) == 1 else torch.stack(e_all_predicted[:-1])

      e_all_predicted_argmax = torch.argmax(e_all_predicted, dim=2)
      e_correct_predictions = (e_all_predicted_argmax == e_all_labels).sum()
      e_accuracy = e_correct_predictions / torch.numel(e_all_predicted_argmax)
      ##############
      print(f'Accuracy after epoch {epoch+1}: {e_accuracy*100:.2f}')
      save_model(
        model=model,
        model_path=model_path.replace('best', f'epoch_{epoch}'),
        script_path=script_path.replace('best', f'epoch_{epoch}'),
        state_path=state_path.replace('best', f'epoch_{epoch}'),
        quant=quant
      )
      model.train()

  end_time = time()

  if is_eval:
    all_labels = torch.stack(all_labels) if len(all_labels) == 1 else torch.stack(all_labels[:-1])
    all_predicted = torch.stack(all_predicted) if len(all_predicted) == 1 else torch.stack(all_predicted[:-1])
    if print_predictions:
      all_predicted_list = all_predicted.squeeze().tolist()
      all_predicted_str = ' '.join([str(el) for el in all_predicted_list])
      print(f'Predictions:\n{all_predicted_str}')

    all_predicted_argmax = torch.argmax(all_predicted, dim=2)
    correct_predictions = (all_predicted_argmax == all_labels).sum()
    accuracy = correct_predictions / torch.numel(all_predicted_argmax)


  return (accuracy, end_time - start_time, (all_data, all_predicted, all_labels))


def save_model(
  model: nn.Module,
  model_path: str,
  script_path: str,
  state_path: str,
  quant: bool
) -> None:
  model.eval()
  
  print(f'Model saved successfully (', end ='')

  if not quant:
    model_script = torch.jit.script(model)
    model_script.save(script_path)

    torch.save(model, model_path)

    print(f'{model_path}, {script_path}, ', end='')

  torch.save(
    {'state_dict': model.state_dict()},
    state_path,
  )

  print(f'{state_path})')


def evaluate(
  test_loader: DataLoader,
  model: nn.Module,
  criterion: nn.Module,
  filepath: Optional[str] = None,
  print_predictions: bool = False,
  num_particles: int = 1,
) -> Tuple[float, float, Tuple[List[float], List[float], List[float]]]:

  with torch.inference_mode():
    if filepath is None:
      accuracy, total_time, data_results = train_test_loop(
        loader=test_loader,
        model=model,
        criterion=criterion,
        is_train=False,
        num_particles=num_particles,
        print_predictions=print_predictions,
      )
    
    else:
      with open(filepath, 'w') as f:
        with redirect_stdout(f):
          # Write input data in HLS format
          samples = next(iter(test_loader))[0][0].tolist()
          if num_particles != 1:
            for sample in samples:
              f.write(' '.join([str(el) for el in sample]) + '\n')
          else:
            f.write(' '.join([str(el) for el in samples]) + '\n')

          accuracy, total_time, data_results = train_test_loop(
            loader=test_loader,
            model=model,
            criterion=criterion,
            is_train=False,
            num_particles=num_particles,
            print_predictions=print_predictions,
          )

  return (accuracy, total_time, data_results)


def time_evaluate(
  test_loader: DataLoader,
  model: nn.Module,
  criterion: nn.Module,
  num_particles= int,
  num_epochs: int = 5,
) -> Tuple[float, float]:

  # Evaluate once to warm-up
  print(f'Timing evaluation, warming up...')
  for _ in range(5):
    _, _, _ = evaluate(test_loader=test_loader, model=model, criterion=criterion, num_particles=num_particles)
  
   # If using GPU, wait for warm-up to finish
  if DEVICE.type == 'cuda':
    torch.cuda.synchronize(DEVICE)

  times = []
  print(f'Evaluating {num_epochs} times...')
  for _ in range(num_epochs):
    accuracy, total_time, _ = evaluate(test_loader=test_loader, model=model, criterion=criterion, num_particles=num_particles)
    times.append(total_time)

  times = np.array(times)
  return (accuracy, times.mean(), times.std())


def compute_roc_auc(targets, predictions):
  def find_FPR_TPR_AUC(curr_targets, curr_predictions):
    # print(type(curr_targets), type(curr_predictions))
    # print(curr_targets, curr_predictions)
    FPRs, TPRs, _ = roc_curve(curr_targets, curr_predictions)
    return FPRs, TPRs, auc(FPRs, TPRs)

  num_classes = len(CLASSES)

  targets = np.vstack([one_hot(target, num_classes) for target in targets])
  predictions = np.vstack(predictions)

  FPRs = [-1] * num_classes
  TPRs = [-1] * num_classes
  AUCs = [-1] * num_classes
  interpolated_10s = [-1] * num_classes
  interpolated_1s = [-1] * num_classes

  # print('\n' + '-'*22 + 'AUC Analysis' + '-'*21)
  print('-'*55)
  print('Particle' + ' '*8 + 'AUC' + ' '*8 + 'TPR @ FPR=10%' + ' '*3 + 'TPR @ FPR=1%')
  print('-'*55)

  fig = plt.figure()
  plt.plot([0, 1], [0, 1], linestyle='--')
  
  for i in range(num_classes):
    FPRs[i], TPRs[i], AUCs[i] = find_FPR_TPR_AUC(targets[:, i], predictions[:, i])
    interpolated = interpolate.interp1d(FPRs[i], TPRs[i])
    interpolated_10s[i] = interpolated(0.1)
    interpolated_1s[i] = interpolated(0.01)
    particle = CLASSES[i]

    print(f'{particle + ":" :<13} {AUCs[i]:<15.4f} {interpolated_10s[i]:<15.4f} {interpolated_1s[i]:<8.4f}')
    plt.plot(FPRs[i], TPRs[i], label=f'{particle} (AUC={AUCs[i]:.4f})')
  
  plt.xlim([-0.01, 1.0])
  plt.ylim([0.0, 1.01])
  plt.xlabel('False Positive Rate')
  plt.ylabel('True Positive Rate')
  plt.title('Receiver operating characteristic curve')
  plt.grid()
  handles, labels = plt.gca().get_legend_handles_labels()
  labels, handles = zip(*sorted(zip(labels, handles), key=lambda t: t[0]))
  plt.gca().legend(handles, labels, loc='lower right')
  fig.tight_layout()
  plt.savefig('logs/ROC.png', format='png', dpi=200)

  print('-'*55)
  print('Average:' + ' '*6 + f'{sum(AUCs)/num_classes:<15.4f} {sum(interpolated_10s)/num_classes:<15.4f} {sum(interpolated_1s)/num_classes:<8.4f}')
  print('-'*55)
    
  FPR_micro, TPR_micro, AUC_micro = find_FPR_TPR_AUC(targets.ravel(), predictions.ravel())

  print('Generating confusion matrix...')
  predictions = np.argmax(predictions, axis=1)
  targets = np.argmax(targets, axis=1)
  
  confusion_matrix = np.zeros((5, 5), dtype=np.uint)
  for target, pred in zip(targets, predictions):
      confusion_matrix[int(target), int(pred)] += 1

  # Normalize
  confusion_matrix = confusion_matrix / confusion_matrix.sum(axis=1).reshape(1,-1)

  fig = plt.figure()
  sn.heatmap(confusion_matrix, annot=True, xticklabels=CLASSES, yticklabels=CLASSES, cbar=False, cmap='viridis')
  plt.yticks(rotation=0)
  plt.title('Jet Categories Confusion Matrix')
  plt.ylabel('True Label')
  plt.xlabel('Predicted Label')
  fig.tight_layout()

  confusion_matrix_path = 'logs/confusion_matrix.png'
  plt.savefig(confusion_matrix_path, format='png', dpi=200)
  print(f'Saved confusion matrix to {confusion_matrix_path}')

def mean_var_info(
  name: str,
  index: int,
  mean: torch.Tensor,
  var: torch.Tensor,
  ctr: int,
  sub_index: str=''
) -> str:
  result = f"{name}{index}\n"
  result += f"mean{sub_index}: {mean.size()}\n\t"

  # curr_mean = torch.mean(mean, dim=0)
  curr_mean = mean
  if len(mean.size()) > 1:
    for i in range(curr_mean.shape[0]):
      result += f"[{i}]: {curr_mean[i]}\n\t"
    # result += f"[0]: {curr_mean[0]}\n\t"
    # result += f"[1:]: {torch.mean(curr_mean[1:])}\n"
  else:
    result += f"{curr_mean}\n"

  result += f"var{sub_index}: {var.size()}\n\t"

  # curr_var = torch.mean(var, dim=0)
  curr_var = var
  if len(var.size()) > 1:
    for i in range(curr_var.shape[0]):
      result += f"[{i}]: {curr_var[i]}\n\t"
    # result += f"[0]: {curr_var[0]}\n\t"
    # result += f"[1:]: {torch.mean(curr_var[1:])}\n"
    # print(f"[({curr_mean[0]}, {curr_var[0]}), ({torch.mean(curr_mean[1:])}, {torch.mean(curr_var[1:])})],")
  else:
    result += f"{curr_var}\n"
    # print(f"[({curr_mean}, {curr_var})],")

  result += f"ctr{sub_index}: {ctr}\n"

  return result


def main(
  num_particles: int,
  x_type: str,
  do_train: bool = False,
  model_path: Optional[str] = None,
  script_path: Optional[str] = None,
  state_path: Optional[str] = None,
  debug_path: Optional[str] = None,
  is_debug: bool = False,
  is_timing: bool = False,
  only_predictions: bool = False,
  tiny_size: int = 1,
  num_epochs: int = 3,
  generate_in_out_hls_tb: int = 0,
  hls_tb_in_path: Optional[str] = None,
  hls_tb_out_path: Optional[str] = None,
  hls_tb_labels_path: Optional[str] = None,
  measure_flops: bool = False,
  norm_info_path: Optional[str] = None,
  quant: bool = False,
  resume: bool = False,
  num_transformers: int = 3,
  embbed_dim: int = 64,
  num_heads: int = 2,
  activation: str = 'ReLU',
  normalization: str = 'Batch',
) -> None:
 
  batch_size = 128
  criterion = torch.nn.NLLLoss()
  dropout = 0.0
  dataset_name = 'HLF' if num_particles == 1 else f'{num_particles} jets'

  print('-'*15 + 'Model configuration' + '-'*15)
  print(f'Dataset: {dataset_name}')
  print(f'Batch size: {batch_size}')
  print(f'Critetion: {criterion}')
  print(f'# of transformers: {num_transformers}')
  print(f'# of embedded dimensions: {embbed_dim}')
  print(f'# of attention heads: {num_heads}')
  print(f'Activation function: {activation}')
  print(f'Normalization: {normalization}')
  print(f'Dropout rate: {dropout}')
  print(f'Input and model precision type: {x_type}')
  print(f'Pre-training quantization: {quant}')
  print('-'*49)


  train_loader, test_loader, tiny_loader, classes = load_dataset(
    num_particles=num_particles,
    x_type=x_type,
    batch_size=batch_size,
    tiny_size=tiny_size
  )

  if do_train:
    # Instantiate model
    if not quant:
      model = ConstituentNet(
        in_dim=16,
        embbed_dim=embbed_dim,
        num_heads=num_heads,
        num_classes=len(classes), # 5
        num_transformers=num_transformers,
        dropout=dropout,
        is_debug=is_debug,
        num_particles=num_particles,
        activation=activation,
        normalization=normalization,
      ).to(DEVICE)

    else:
      # model = ConstituentNetQuantBrevitas(
      #   in_dim=16,
      #   embbed_dim=embbed_dim,
      #   num_heads=num_heads,
      #   num_classes=len(classes), # 5
      #   num_transformers=num_transformers,
      #   dropout=dropout,
      #   is_debug=is_debug,
      #   num_particles=num_particles,
      #   activation=activation,
      #   normalization=normalization,
      # ).to(DEVICE)

      model = ConstituentNetQuantQPyTorch(
        in_dim=16,
        embbed_dim=embbed_dim,
        num_heads=num_heads,
        num_classes=len(classes), # 5
        num_transformers=num_transformers,
        dropout=dropout,
        is_debug=is_debug,
      ).to(DEVICE)

    if resume:
      state_dict = torch.load(state_path)['state_dict']
      model.load_state_dict(state_dict, strict=True)
      model.to(DEVICE)
      print(f'Model loaded from {state_path}')

    if x_type == 'float64':
      model.double()
    elif x_type == 'float32':
      model.float()
    elif x_type == 'float16':
      model.half()
    elif x_type == 'bfloat16':
      model.bfloat16()
    else:
      raise TypeError(f'Unrecognized tensor type: {x_type}')

    optimizer = torch.optim.Adam(model.parameters(), lr=1e-3)
    if quant:
      optimizer = OptimLP(
        optimizer,
        weight_quant=WEIGHT_QUANT,
        grad_quant=GRAD_QUANT,
        momentum_quant=MOMENTUM_QUANT,
        acc_quant=ACC_QUANT,
        grad_scaling=1/1000,
      )


    # Train model
    _, total_time, _ = train_test_loop(
      loader=train_loader,
      model=model,
      criterion=criterion,
      optimizer=optimizer,
      is_train=True,
      num_particles=num_particles,
      num_epochs=num_epochs,
      secondary_loader=test_loader,
      model_path=model_path,
      script_path=script_path,
      state_path=state_path,
      quant=quant,
    )
    print(f'Training took {total_time:.2f} s')

    save_model(
      model=model,
      model_path=model_path,
      script_path=script_path,
      state_path=state_path,
      quant=quant
    )
  
  else:
    # Load from script
    # model = torch.jit.load(script_path, map_location=DEVICE)

    # Load from state_dict
    if quant:
      # model = ConstituentNetQuantBrevitas(
      #   in_dim=16,
      #   embbed_dim=embbed_dim,
      #   num_heads=num_heads,
      #   num_classes=len(classes), # 5
      #   num_transformers=num_transformers,
      #   dropout=dropout,
      #   is_debug=is_debug,
      # )
      model = ConstituentNetQuantQPyTorch(
        in_dim=16,
        embbed_dim=embbed_dim,
        num_heads=num_heads,
        num_classes=len(classes), # 5
        num_transformers=num_transformers,
        dropout=dropout,
        is_debug=is_debug,
      ).to(DEVICE)
      state_dict = torch.load(state_path)['state_dict']
      model.load_state_dict(state_dict, strict=True)
      model.to(DEVICE)
      print(f'Model loaded from {state_path}')

    # Load from model
    else:
      model = torch.load(model_path, map_location=DEVICE)
      model.to(DEVICE)
      print(f'Model loaded from {model_path}')

    model.eval()



  print(f'Model parameters: {sum(p.numel() for p in model.parameters() if p.requires_grad)}')
  
  # Test model
  if is_debug:
    print(f'{len(tiny_loader)=}, {tiny_size=}')
    _, _, _ = evaluate(
      test_loader=tiny_loader,
      model=model,
      criterion=criterion,
      filepath=debug_path,
      print_predictions=True,
      num_particles=num_particles
    )
    print(f'Debug output saved to {debug_path}')
    if is_timing:
      print(f'WARNING: Skipping timing as debug affects evaluation speed')

  elif is_timing:
    accuracy, time_mean, time_std = time_evaluate(
      test_loader=test_loader,
      model=model,
      criterion=criterion,
      num_epochs=num_epochs,
      num_particles=num_particles
    )
    time_mean_batch = time_mean / (len(test_loader) - 2)
    time_std_batch = time_std / (len(test_loader) - 2)
    time_mean_sample = time_mean_batch / batch_size
    time_std_sample = time_std_batch / batch_size

    print(f'Test accuracy: {accuracy*100:.2f}%')
    print(f'{time_mean_batch * 1000:.3f} \u00B1 {time_std_batch * 1000:.3f} ms per batch')
    print(f'{time_mean_sample * 1000000:.3f} \u00B1 {time_std_sample * 1000000:.3f} us per sample')
  elif not only_predictions:
    accuracy, total_time, (data, results, labels) = evaluate(
      test_loader=test_loader,
      model=model,
      criterion=criterion,
      num_particles=num_particles
    )
    print(f'Test accuracy: {accuracy*100:.2f}% in {total_time:.2f} s')
    compute_roc_auc(targets=labels, predictions=results)

    if generate_in_out_hls_tb > 0:
      print(f'Creating HLS TB data of size {generate_in_out_hls_tb} (input: {hls_tb_in_path}, output: {hls_tb_out_path})')
      assert len(data) - 1 == len(results) == len(test_loader) - 2,\
        'Number of captured samples and predictions must match DataLoader size'
      
      if generate_in_out_hls_tb >= batch_size:
        batches_limit = generate_in_out_hls_tb // batch_size
        in_batch_limit = batch_size
        print(f'Requested HLS TB size {generate_in_out_hls_tb} is bigger than {batch_size}, so rounding to {batches_limit*batch_size}')

      else:
        batches_limit = 0
        in_batch_limit = generate_in_out_hls_tb % batch_size

      # print(f'{batches_limit=}, {in_batch_limit=}')


      with open(hls_tb_in_path, 'w') as f_in, open(hls_tb_out_path, 'w') as f_out, open(hls_tb_labels_path, 'w') as f_labels:
        # Iterate until shorter ends and print to corresponding files
        for index, (data_batch, results_batch, labels_batch) in enumerate(zip(data, results, labels)):
          data_list = data_batch.tolist()
          results_list = results_batch.tolist()
          labels_list = labels_batch.tolist()

          # print(f'{data_batch.shape=}, {results_batch.shape=}, {labels_batch.shape=}')

          # Iterate over each element in a batch
          for sub_index, (curr_data, curr_results, curr_labels) in enumerate(zip(data_list, results_list, labels_list)):

            # print(f'{len(curr_data)=}, {len(curr_data[0])=}, {len(curr_results)=}, {curr_labels=}')

            results_str = ' '.join([str(el) for el in curr_results]) + '\n'
            curr_str = str(curr_labels) + '\n'#' '.join([str(el) for el in curr_labels]) + '\n'

            # if num_particles == 1:
            #   data_str = ' '.join([str(el) for el in curr_data[0]]) + '\n'
            # else:
            data_str = ''
            for i in range(num_particles):
              data_str += ' '.join([str(el) for el in curr_data[i]]) + ' , '
            data_str += '\n'

            # print(data_str.replace(' , ', '\n') + '\n')

            f_in.write(data_str)
            f_out.write(results_str)
            f_labels.write(curr_str)

            if sub_index >= in_batch_limit-1:
              break
          
          if index >= batches_limit-1:
            break
  else:
    _, _, _ = evaluate(
      test_loader=tiny_loader,
      model=model,
      criterion=criterion,
      print_predictions=True,
      num_particles=num_particles
    )

  if measure_flops:
    flop_input = torch.rand((batch_size, num_particles, 16)).to(DEVICE)
    flops = FlopCountAnalysis(model=model, inputs=flop_input)
    print(f'FLOPS: {flops.total() / 1000} k')

  if norm_info_path is not None:
    print(f'Generating mean and variance info for norm layers to {norm_info_path}')
    with open(f'logs/{norm_info_path}', 'w') as afile:
      afile.write(mean_var_info(name='Net', index=0, mean=model.get_avg_mean(), var=model.get_avg_var(), ctr=model.get_counter()))
      # afile.write(f"Net mean: {model.get_avg_mean().size()}\n{torch.mean(model.get_avg_mean())}\nvar: {model.get_avg_var().size()}\n{torch.mean(model.get_avg_var())}\nctr: {model.get_counter()}\n")
      for index, tr in enumerate(model.transformers):
        afile.write('-'*30 + '\n')
        afile.write(mean_var_info(name='Trans', index=index, sub_index='0', mean=tr.get_avg_mean0(), var=tr.get_avg_var0(), ctr=tr.get_counter0()))
        afile.write(mean_var_info(name='Trans', index=index, sub_index='3', mean=tr.get_avg_mean3(), var=tr.get_avg_var3(), ctr=tr.get_counter3()))
        afile.write(mean_var_info(name='SA', index=index, mean=tr.self_attention.get_avg_mean(), var=tr.self_attention.get_avg_var(), ctr=tr.self_attention.get_counter()))
        # afile.write(f"Trans{index} mean0: {tr.get_avg_mean0().size()}\n{torch.mean(tr.get_avg_mean0(), dim=0)}\nvar0: {tr.get_avg_var0().size()}\n{torch.mean(tr.get_avg_var0(), dim=0)}\nctr0: {tr.get_counter0()}\n")
        # afile.write(f"Trans{index} mean3: {tr.get_avg_mean3().size()}\n{torch.mean(tr.get_avg_mean3(), dim=0)}\nvar3: {tr.get_avg_var3().size()}\n{torch.mean(tr.get_avg_var3(), dim=0)}\nctr3: {tr.get_counter3()}\n")
        # afile.write(f"SA{index} mean: {tr.self_attention.get_avg_mean().size()}\n{torch.mean(tr.self_attention.get_avg_mean(), dim=0)}\nvar: {tr.self_attention.get_avg_var().size()}\n{torch.mean(tr.self_attention.get_avg_var(), dim=0)}\nctr: {tr.self_attention.get_counter()}\n")
    
    with open(f'logs/detailed_{norm_info_path}', 'w') as afile:
      afile.write(f"Net mean: \n{model.get_avg_mean()}\nvar: \n{model.get_avg_var()}\nctr: {model.get_counter()}\n")
      for index, tr in enumerate(model.transformers):
        afile.write('-'*30 + '\n')
        afile.write(f"Trans{index} mean0: \n{tr.get_avg_mean0()}\nvar0: \n{tr.get_avg_var0()}\nctr0: {tr.get_counter0()}\n")
        afile.write(f"Trans{index} mean3: \n{tr.get_avg_mean3()}\nvar3: \n{tr.get_avg_var3()}\nctr3: {tr.get_counter3()}\n")
        afile.write(f"SA{index} mean: \n{tr.self_attention.get_avg_mean()}\nvar: \n{tr.self_attention.get_avg_var()}\nctr: {tr.self_attention.get_counter()}\n")


def parse():
  parser = ArgumentParser(description='Train and/or evaluate Pytorch model')

  parser.add_argument('--particles', action='store', type=int)
  parser.add_argument('--train', action='store_true')
  parser.add_argument('--debug', action='store_true')
  parser.add_argument('--timing', action='store_true')
  parser.add_argument('--rng_seed', action='store_true')
  parser.add_argument('--use_cpu', action='store_true')
  parser.add_argument('--only_predictions', action='store_true')
  parser.add_argument('--fetch', action='store_true')
  parser.add_argument('--tiny_size', action='store', type=int, default=1)
  parser.add_argument('--epochs', action='store', type=int)
  parser.add_argument('--cuda', action='store', type=int, default=0)
  parser.add_argument('--generate_hls_tb', action='store', type=int, default=0)
  parser.add_argument('--flops', action='store_true')
  parser.add_argument('--norm_info', action='store', type=str, default=None)
  parser.add_argument('--quant', action='store_true')
  parser.add_argument('--x_type', action='store', type=str, default='float32')
  parser.add_argument('--resume', action='store_true')
  parser.add_argument('--num_transformers', action='store', type=int, default=3)
  parser.add_argument('--embbed_dim', action='store', type=int, default=64)
  parser.add_argument('--num_heads', action='store', type=int, default=2)
  parser.add_argument('--activation', action='store', type=str, default='ReLU')
  parser.add_argument('--normalization', action='store', type=str, default='Batch')

  return parser.parse_args()


if __name__ == "__main__":

  if sys.version_info[0] < 3:
    raise Exception("Must be using Python 3")
  if sys.version_info[1] < 9:
    raise Exception("Must be using Python 3.9")

  torch.set_printoptions(precision=5, threshold=2097152, linewidth=1000, sci_mode=False)

  args = parse()

  if args.use_cpu:
    num_threads = 8
    torch.set_num_threads(num_threads)
    DEVICE = torch.device('cpu')
    print(f'{DEVICE=}')
  else:
    if not torch.cuda.is_available():
      quit('No CUDA found!')
    assert 0 <= args.cuda < torch.cuda.device_count(), f'CUDA index outside [0, {torch.cuda.device_count()})'
    DEVICE = torch.device(f'cuda:{args.cuda}')
    print(f'{DEVICE=}, name={torch.cuda.get_device_name(DEVICE)}')

  if not args.rng_seed:
    set_seed(123)

  if args.fetch:
    if args.particles == 1:
      Path(DATA_DIR).mkdir(parents=True, exist_ok=True)
      fetch_dataset()
    else:
      Path(DATA_30_DIR).mkdir(parents=True, exist_ok=True) # TODO add other dirs if implemented
      fetch_N_dataset(num_particles=args.particles)

  # debug_prefix = 'debug_' if args.debug else ''
  debug_prefix = ''
  quant_prefix = 'quant_24_40_' if args.quant else ''

  main(
    num_particles=args.particles,
    x_type=args.x_type,
    do_train=args.train,
    model_path=os.path.join(DIR_NAME, quant_prefix + debug_prefix + 'best.model.pth'),
    script_path=os.path.join(DIR_NAME, quant_prefix + debug_prefix + 'best.script.pth'),
    state_path=os.path.join(DIR_NAME, quant_prefix + debug_prefix + 'best.pth.tar'),
    debug_path=os.path.join(DIR_NAME, 'layers_output.txt'),
    is_debug=args.debug,
    is_timing=args.timing,
    only_predictions=args.only_predictions,
    tiny_size=args.tiny_size,
    num_epochs=args.epochs,
    generate_in_out_hls_tb=args.generate_hls_tb,
    hls_tb_in_path='hls/tb_data/tb_input_features.dat',
    hls_tb_out_path='hls/tb_data/tb_output_predictions.dat',
    hls_tb_labels_path='hls/tb_data/tb_labels.dat',
    measure_flops=args.flops,
    norm_info_path=args.norm_info,
    quant=args.quant,
    resume=args.resume,
    num_transformers=args.num_transformers,
    embbed_dim=args.embbed_dim,
    num_heads=args.num_heads,
    activation=args.activation,
    normalization=args.normalization,
  )