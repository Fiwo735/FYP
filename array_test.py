import numpy as np
import csv
import torch
import torch.nn as nn

torch.set_printoptions(profile='full', sci_mode=False, threshold=2097152)

# x_data = '29.938385009765625 178.55862426757812 -67.51207733154297 193.2311248779297 0.17523084580898285 181.0510711669922 0.1761978417634964 -0.3647479712963104 0.008448980748653412 -0.0 1.4046745300292969 0.000455104949651286 0.0 0.008461219258606434 -0.34938931465148926 6.123234262925839e-17'
# x = np.array([float(el) for el in x_data.split(' ')])

# def read_data():
#   t = []
#   with open('extracted_weights_biases/inp_layer_weight.txt', 'r') as infile:
#     for el in infile:
#       t = np.array([float(el) for el in el.split(',')])
#   return t

def transform_like_HLS(t):
  return t.reshape(16, 128).flatten(order='F')

def revert_HLS_read(t, dim0=16, dim1=128):
  return t.reshape(dim0, dim1, order='F').flatten(order='C')

def output_format_to_numpy(x):
  x = x.replace('\n', ' ').replace('  ', ' ').split(' ')
  # x = [float(el) for el in x if 'e' in el]
  x = [float(el) for el in x if len(el) == 6 or (len(el) == 7 and el[0] == '-')]
  x = np.array(x)

  x1 = np.array([el for i, el in enumerate(x) if ((i < 252 and i % 12 < 6) or (i >= 252 and i % 4 < 2))])
  x2 = np.array([el for i, el in enumerate(x) if ((i < 252 and i % 12 >= 6) or (i >= 252 and i % 4 >= 2))])
  result = torch.unsqueeze(torch.cat((torch.unsqueeze(torch.from_numpy(x1), dim=0), torch.unsqueeze(torch.from_numpy(x2), dim=0)), dim=0), dim=0)
  return result

def case_0():
  two_cols_data = ''' Columns 1 to 6  3.9991e-02  8.1095e-01 -6.7665e-02  4.5703e-02 -9.1089e-01 -7.3059e-01
  -6.1523e+00  1.5260e+01 -7.8616e+01  3.5627e+01 -3.8582e+01  5.4523e-01

  Columns 7 to 12  1.9954e+00  1.7009e+00  1.1902e+00  6.8370e-01 -7.6744e-01 -1.4813e+00
    5.2707e+01 -3.1169e+01  3.4800e+01 -2.2370e+00  6.3342e+01  3.5254e+01

  Columns 13 to 18  3.4362e-01  2.3607e+00 -3.4036e+00  1.5055e+00 -1.8115e-02  4.5108e-02
  -8.1840e+01 -7.3203e+01  6.8378e+01 -4.5159e+01 -8.6566e+00  3.4873e+01

  Columns 19 to 24 -1.3254e+00  1.0194e+00  5.2582e-01  7.5094e-01  1.4674e-01  1.4119e-01
    1.0476e+02 -4.3084e+01 -1.9942e+01 -5.7885e+01 -6.2312e+00  5.6122e+01

  Columns 25 to 30 -9.4793e-01 -6.8910e-01 -1.5162e-01  1.0495e+00 -1.2273e+00 -4.3411e-01
  -1.9256e+00 -6.8234e+01 -6.3197e+01  5.1908e+01 -2.2754e+01 -8.4253e+01

  Columns 31 to 36 -2.9526e-01 -1.1433e+00  3.9852e-01  3.7263e-02  1.0493e+00 -3.2723e-01
  -7.4467e+01  1.9988e+01  7.6060e-01 -5.9744e+01  2.5900e+00 -1.1099e+02

  Columns 37 to 42 -9.6225e-01 -7.8604e-01  5.6631e-01  2.0819e+00  9.5608e-01 -4.6015e-01
  -3.2139e+01 -3.1245e+01 -1.2681e+02 -1.3546e+01  4.3933e+01 -8.0395e+00

  Columns 43 to 48 -1.1359e+00  7.5822e-01 -6.8692e-01  8.8960e-02  9.6339e-01  6.5711e-01
    2.0699e+01 -5.2676e+01  2.7513e+01  2.8659e+01  3.8386e+01  3.7802e+01

  Columns 49 to 54 -1.9308e+00 -4.7181e-02 -7.8657e-01 -3.1313e-01 -1.8381e+00 -4.1529e-01
  -2.0213e+01  2.0026e+01  1.5013e+01  2.5405e+01 -2.2660e+00  4.0137e+01

  Columns 55 to 60  1.1442e+00 -4.6309e-01 -8.1051e-01 -3.2279e-01  1.6047e-01  1.6301e-01
    5.1563e+01 -4.6199e+01 -8.6484e+01 -1.9677e+01 -1.1647e+02 -2.5375e+01

  Columns 61 to 66  2.2873e+00  1.9724e-03  6.9057e-01  1.5403e+00  3.8256e-01 -1.3344e+00
  -5.1251e+01  5.7303e+01  6.2597e+01 -5.0145e+01  6.0105e+01 -6.7048e+01

  Columns 67 to 72  2.3210e-02 -4.2549e-01 -8.5724e-01 -6.2708e-01 -9.6605e-01 -3.8244e-01
    4.6392e+01 -3.5880e+01 -3.8093e+01  9.2044e+01 -4.1169e+01 -2.4093e+00

  Columns 73 to 78 -3.2861e-01  1.2402e+00 -8.3001e-01  1.0517e+00  1.8609e-01 -2.3605e-02
    7.3557e+01  1.7257e+01  4.3155e+01 -1.9613e+01  3.9070e+00  1.2794e+02

  Columns 79 to 84 -1.2990e+00  6.7165e-01 -5.1183e-01 -1.0611e+00  3.9397e-01 -5.9869e-01
    8.8469e-01 -8.5691e+01 -2.1229e+01  7.7522e+00  2.0085e+01  1.7608e+00

  Columns 85 to 90 -8.2245e-01  2.9716e-01  1.2273e+00  1.0695e+00  1.1247e-01  2.0362e+00
  -8.1886e+01 -1.0984e+01 -1.1414e+01  4.4739e+01  1.9691e+01  6.3646e+01

  Columns 91 to 96  2.6256e-01 -3.6467e-01 -7.0295e-01 -1.8692e+00  7.7005e-01 -1.7508e+00
    3.0171e+01  7.9858e+00  6.8097e+01  4.0402e+01  6.8650e+01 -1.1860e+02

  Columns 97 to 102 -7.5655e-01 -1.4886e+00 -7.0932e-01  1.5126e+00  1.2890e+00  1.0279e+00
    6.9442e+01  1.1253e+01  1.7532e+00  4.6354e+01  5.0235e+01 -8.2173e+01

  Columns 103 to 108 -1.4096e+00  4.1890e-01  1.1135e+00 -1.2266e+00  3.7971e-01  9.0455e-01
    3.1491e+01 -3.1440e+01 -1.1554e+02 -1.5440e+01  4.3577e+01  8.7132e+01

  Columns 109 to 114 -1.0729e+00 -2.1255e-01  4.4764e-01  8.0864e-02  2.7734e-01  1.4090e-01
  -1.7538e+01 -1.7563e+00 -2.0202e+01 -3.5053e+01  5.5379e+01  6.5117e+01

  Columns 115 to 120  9.0318e-01 -3.3479e-01  1.7014e+00  1.8363e-01  6.7760e-03  1.0173e+00
    8.9089e+01  2.1531e+01 -9.3153e+00  5.4296e+01  2.3040e+01  6.3879e+01

  Columns 121 to 126  6.3204e-01 -4.9531e-01 -1.5471e-01  4.6500e-01  3.3187e-01 -8.8935e-01
  -2.9480e+01 -2.3560e+01  4.6506e+01 -3.1823e+01  5.3896e+01 -4.0775e+01

  Columns 127 to 128 -8.1257e-01  5.3334e-01
  -5.9235e+01  2.7378e+01'''

  two_cols_data = two_cols_data.replace('\n', ' ').replace('  ', ' ').split(' ')
  print(two_cols_data)
  two_cols_data = [float(el) for el in two_cols_data if 'e' in el]
  two_cols_data = np.array(two_cols_data)

  print(two_cols_data)

  col1_data = np.array([el for i, el in enumerate(two_cols_data) if ((i < 252 and i % 12 < 6) or (i >= 252 and i % 4 < 2))])
  col2_data = np.array([el for i, el in enumerate(two_cols_data) if ((i < 252 and i % 12 >= 6) or (i >= 252 and i % 4 >= 2))])

  # print(col1_data)
  # print(col2_data)

  # print(col1_data.shape)
  # print(col2_data.shape)

  # col1_mean = col1_data.mean()
  # col1_var = col1_data.var()
  # col2_mean = col2_data.mean()
  # col2_var = col2_data.var()

  # print(f"{col1_mean = }")
  # print(f"{col1_var = }")
  # print(f"{col2_mean = }")
  # print(f"{col2_var = }")

  col_data = torch.unsqueeze(torch.cat((torch.unsqueeze(torch.from_numpy(col1_data), dim=0), torch.unsqueeze(torch.from_numpy(col2_data), dim=0)), dim=0), dim=0)
  # col_mean = 
  print("col_data (concat):")
  print(col_data)
  print(col_data.size())

  col_mean = torch.mean(col_data, dim=2)
  print("col_mean:")
  print(col_mean)

  col_var = torch.var(col_data, dim=2, unbiased=False)
  print("col_var:")
  print(col_var)

  # col_var_sum = None
  # col_var_sum = (col_var_sum + col_var) if col_var_sum is not None else (col_var)
  # col_var_sum = (col_var_sum + col_var) if col_var_sum is not None else (col_var)
  # col_var_sum = (col_var_sum + col_var) if col_var_sum is not None else (col_var)
  # print("col_var_sum")
  # print(col_var_sum)

  # col_var_avg = torch.div(col_var_sum, 3)
  # print("col_var_avg")
  # print(col_var_avg)

  eps = 1e-5
  W0 = 0.99982661008 # 0.99982661008
  b0 = 0.00038191396 # 0.00038191396

  def layer_norm(x, mean, var, eps, weight, bias):
    numerator = x - mean
    denominator = np.sqrt(var + eps)
    return numerator * weight / denominator + bias

  col1_data_normalized = np.array([layer_norm(x=x, mean=col_mean[0][0], var=col_var[0][0], eps=eps, weight=W0, bias=b0) for x in col1_data])
  print(col1_data_normalized)
  print(col1_data_normalized.shape)

  col2_data_normalized = np.array([layer_norm(x=x, mean=col_mean[0][1], var=col_var[0][1], eps=eps, weight=W0, bias=b0) for x in col2_data])
  print(col2_data_normalized)
  print(col2_data_normalized.shape)

  results = ''' Columns 1 to 9  0.0269  0.8112 -0.0830  0.0319 -0.9405 -0.7571  2.0154  1.7169  1.1973
  -0.1204  0.2913 -1.5156  0.6827 -0.7446  0.0081  1.0114 -0.6022  0.6674

  Columns 10 to 18  0.6811 -0.7951 -1.5215  0.3356  2.3869 -3.4773  1.5171 -0.0327  0.0313
  -0.0456  1.2158  0.6755 -1.5757 -1.4110  1.3134 -0.8719 -0.1692  0.6682

  Columns 19 to 27 -1.3624  1.0228  0.5204  0.7497  0.1355  0.1293 -0.9782 -0.7146 -0.1684
    2.0125 -0.8306 -0.3866 -1.1160 -0.1219  1.0768 -0.0392 -1.3145 -1.2181

  Columns 28 to 36  1.0538 -1.2626 -0.4555 -0.3145 -1.1772  0.3913  0.0238  1.0535 -0.3474
    0.9965 -0.4400 -1.6229 -1.4356  0.3822  0.0124 -1.1517  0.0475 -2.1390

  Columns 37 to 45 -0.9927 -0.8135  0.5622  2.1029  0.9584 -0.4817 -1.1695  0.7574 -0.7139
  -0.6206 -0.6035 -2.4428 -0.2628  0.8427 -0.1568  0.3955 -1.0165  0.5264

  Columns 46 to 54  0.0763  0.9659  0.6542 -1.9788 -0.0624 -0.8145 -0.3329 -1.8825 -0.4371
    0.5488  0.7359  0.7247 -0.3920  0.3825  0.2859  0.4862 -0.0456  0.7695

  Columns 55 to 63  1.1498 -0.4855 -0.8378 -0.3423  0.1488  0.1513  2.3109 -0.0120  0.6882
    0.9894 -0.8917 -1.6650 -0.3808 -2.2436 -0.4913 -0.9882  1.1002  1.2014

  Columns 64 to 72  1.5514  0.3752 -1.3709  0.0099 -0.4466 -0.8856 -0.6522 -0.9969 -0.4033
  -0.9672  1.1544 -1.2918  0.8899 -0.6923 -0.7348  1.7687 -0.7946 -0.0490

  Columns 73 to 81 -0.3482  1.2473 -0.8587  1.0551  0.1753 -0.0386 -1.3348  0.6690 -0.5346
    1.4133  0.3290  0.8271 -0.3804  0.0729  2.4583  0.0147 -1.6503 -0.4108

  Columns 82 to 90 -1.0934  0.3866 -0.6237 -0.8511  0.2884  1.2341  1.0730  0.1002  2.0573
    0.1461  0.3839  0.0311 -1.5783 -0.2133 -0.2225  0.8575  0.3761  1.2221

  Columns 91 to 99  0.2528 -0.3850 -0.7296 -1.9156  0.7693 -1.7941 -0.7833 -1.5295 -0.7355
    0.5777  0.1513  1.3076  0.7750  1.3183 -2.2829  1.3326  0.2136  0.0310

  Columns 100 to 108  1.5252  1.2976  1.0307 -1.4479  0.4124  1.1194 -1.2616  0.3726  0.9053
    0.8897  0.9644 -1.5828  0.6027 -0.6073 -2.2261 -0.2994  0.8365  1.6730

  Columns 109 to 117 -1.1063 -0.2299  0.4412  0.0682  0.2676  0.1295  0.9051 -0.3545  1.7165
  -0.3402 -0.0359 -0.3911 -0.6765  1.0624  1.2499  1.7122  0.4116 -0.1820

  Columns 118 to 126  0.1731 -0.0076  1.0214  0.6284 -0.5181 -0.1720  0.4591  0.3228 -0.9185
    1.0429  0.4402  1.2273 -0.5705 -0.4559  0.8919 -0.6148  1.0335 -0.7867

  Columns 127 to 128 -0.8407  0.5285
  -1.1420  0.5243'''

  results = results.replace('\n', ' ').replace('  ', ' ').split(' ')
  results = [float(el) for el in results if len(el) == 6 or (len(el) == 7 and el[0] == '-')]
  results = np.array(results)

  col1_res = np.array([el for i, el in enumerate(results) if ((i < 252 and i % 18 < 9) or (i >= 252 and i % 4 < 2))])
  col2_res = np.array([el for i, el in enumerate(results) if ((i < 252 and i % 18 >= 9) or (i >= 252 and i % 4 >= 2))])
  print("results:\n")
  print(col1_res)
  print(col2_res)
  print(col1_res.shape)
  print(col2_res.shape)

  print("diff:\n")
  col1_diff = np.absolute(col1_data_normalized - col1_res)
  print(col1_diff)
  col2_diff = np.absolute(col2_data_normalized - col2_res)
  print(col2_diff)
  print(f"Biggest error in col1 is {np.amax(col1_diff)}")
  print(f"Biggest error in col2 is {np.amax(col2_diff)}")


  A = torch.tensor([1, 2, 3])
  print(A[0])
  print(A[1:])

  X0 = 3.9991e-02
  X1 = -6.1523

  b0 = -0.01386488933016245
  b1 = -0.0007655795714506348

  W0 = 1.0169684936528849
  W1 = 0.08921465251486772

  print(f"{(X0*W0+b0)=}")
  print(f"{(X1*W1+b1)=}")

class MyLinear(nn.Module):
  def __init__(self, in_dim):
    super(MyLinear, self).__init__()
    self.linear = nn.Linear(in_dim, 3*in_dim, bias=False)

  def forward(self, x):
    return self.linear(x.double())

def case_1():
  input_norm_output = ''' Columns 1 to 9  0.0269  0.8111 -0.0829  0.0320 -0.9406 -0.7572  2.0156  1.7166  1.1970
 -0.1208  0.2925 -1.5153  0.6845 -0.7440  0.0096  1.0114 -0.6009  0.6658

Columns 10 to 18  0.6812 -0.7951 -1.5212  0.3355  2.3870 -3.4773  1.5172 -0.0328  0.0314
 -0.0453  1.2152  0.6768 -1.5768 -1.4103  1.3134 -0.8709 -0.1708  0.6687

Columns 19 to 27 -1.3625  1.0227  0.5205  0.7497  0.1353  0.1293 -0.9786 -0.7148 -0.1685
  2.0139 -0.8308 -0.3853 -1.1166 -0.1226  1.0774 -0.0382 -1.3152 -1.2187

Columns 28 to 36  1.0535 -1.2627 -0.4557 -0.3144 -1.1771  0.3914  0.0238  1.0533 -0.3473
  0.9944 -0.4409 -1.6234 -1.4357  0.3827  0.0130 -1.1524  0.0475 -2.1369

Columns 37 to 45 -0.9926 -0.8136  0.5622  2.1030  0.9583 -0.4818 -1.1692  0.7572 -0.7137
 -0.6196 -0.6038 -2.4412 -0.2630  0.8431 -0.1580  0.3950 -1.0148  0.5282

Columns 46 to 54  0.0761  0.9658  0.6541 -1.9789 -0.0626 -0.8144 -0.3328 -1.8828 -0.4368
  0.5489  0.7345  0.7252 -0.3901  0.3819  0.2869  0.4875 -0.0472  0.7701

Columns 55 to 63  1.1497 -0.4855 -0.8380 -0.3425  0.1489  0.1513  2.3113 -0.0119  0.6882
  0.9903 -0.8909 -1.6655 -0.3797 -2.2434 -0.4902 -0.9895  1.0997  1.2015

Columns 64 to 72  1.5516  0.3751 -1.3710  0.0098 -0.4464 -0.8859 -0.6521 -0.9968 -0.4033
 -0.9682  1.1531 -1.2927  0.8885 -0.6931 -0.7349  1.7690 -0.7945 -0.0487

Columns 73 to 81 -0.3482  1.2472 -0.8587  1.0552  0.1753 -0.0385 -1.3348  0.6689 -0.5345
  1.4113  0.3279  0.8281 -0.3788  0.0716  2.4593  0.0150 -1.6496 -0.4115

Columns 82 to 90 -1.0934  0.3866 -0.6236 -0.8512  0.2884  1.2343  1.0734  0.1002  2.0572
  0.1451  0.3827  0.0326 -1.5795 -0.2120 -0.2242  0.8579  0.3748  1.2206

Columns 91 to 99  0.2527 -0.3850 -0.7297 -1.9156  0.7693 -1.7945 -0.7834 -1.5292 -0.7354
  0.5793  0.1504  1.3068  0.7739  1.3195 -2.2840  1.3339  0.2143  0.0326

Columns 100 to 108  1.5248  1.2975  1.0310 -1.4480  0.4123  1.1191 -1.2615  0.3724  0.9053
  0.8883  0.9632 -1.5813  0.6023 -0.6080 -2.2271 -0.3001  0.8352  1.6743

Columns 109 to 117 -1.1061 -0.2299  0.4412  0.0682  0.2676  0.1293  0.9049 -0.3546  1.7164
 -0.3409 -0.0369 -0.3919 -0.6753  1.0633  1.2496  1.7107  0.4127 -0.1829

Columns 118 to 126  0.1728 -0.0074  1.0211  0.6285 -0.5182 -0.1717  0.4591  0.3229 -0.9186
  1.0440  0.4398  1.2252 -0.5719 -0.4572  0.8936 -0.6156  1.0345 -0.7865

Columns 127 to 128 -0.8408  0.5283
 -1.1421  0.5232'''

  input_norm_output = output_format_to_numpy(input_norm_output)

  print(f"{input_norm_output.shape=}")
  print(input_norm_output)


  # input_norm_raw = '''0.0269086 -0.118814 0.811038 0.294311 -0.0831297 -1.51152 0.0323419 0.68669 -0.941092 -0.741211 -0.757548 0.0115624 2.0151 1.01299 1.71621 -0.598496 1.19619 0.667438 0.681356 -0.0429487 -0.795151 1.21724 -1.5202 0.67852 0.335759 -1.57406 2.38676 -1.40752 -3.477 1.31437 1.51783 -0.867604 -0.0323599 -0.168306 0.031863 0.67087 -1.36191 2.0143 1.02314 -0.828293 0.520689 -0.382319 0.749343 -1.11421 0.134622 -0.120575 0.129044 1.07912 -0.979151 -0.0362937 -0.715236 -1.31286 -0.168044 -1.21587 1.05322 0.996247 -1.26183 -0.438499 -0.45586 -1.62081 -0.31454 -1.43233 -1.17661 0.384195 0.391431 0.0150427 0.0240982 -1.1491 1.05301 0.0496797 -0.347022 -2.13216 -0.993042 -0.617535 -0.813817 -0.601399 0.561986 -2.43682 2.10302 -0.260688 0.958246 0.844396 -0.482265 -0.156033 -1.17003 0.397064 0.756928 -1.0113 -0.712592 0.530414 0.076093 0.551064 0.965819 0.736508 0.654377 0.726731 -1.97731 -0.387319 -0.0623615 0.384214 -0.814551 0.28912 -0.333022 0.489469 -1.88423 -0.0451786 -0.436484 0.77173 1.15011 0.991698 -0.485388 -0.887677 -0.838797 -1.66231 -0.342433 -0.377171 0.148756 -2.24024 0.151342 -0.487263 2.3128 -0.986615 -0.012348 1.10122 0.6876 1.20261 1.55237 -0.965043 0.033364 -0.192759 -0.120115 0.199762 0.000779615 -0.158341 -0.039034 0.122834 -0.0775555 0.131805 -0.0573609 -0.294633 -0.0870022 0.13104 -0.035301 0.0214841 -0.0305592 -0.227438 0.109561 -0.0474663 -0.075392 -0.13453 0.0930227 0.0519626 0.0158479 -0.0187631 -0.0032622 -0.395971 -0.116724 -0.0166748 0.0590363 0.260917 -0.0465029 0.0711151 -0.0956452 -0.0109163 0.0342386 -0.0614958 -0.0543914 -0.0150816 -0.0744552 0.244669 0.0254268 0.0457671 0.108041 0.0431511 0.094012 -0.134045 0.00849369 -0.0548889 0.180314 -0.185107 0.0226559 -0.0918293 -0.0338965 -0.00779573 -0.0634669 -0.209088 -0.167985 -0.129041 0.0674409 -0.195141 -0.157114 0.387549 -0.0685798 -0.217299 -0.133527 -0.021343 -0.0642605 -0.00911182 0.13389 -0.131588 0.114145 -0.156813 0.0904209 0.261517 -0.126631 -0.0986003 0.03649 0.0934614 0.0983884 0.362082 -0.110539 0.0321699 0.0325461 -0.129954 0.0793815 -0.278186 -0.0966719 0.0520174 -0.0201377 -0.00506127 0.0385967 0.0686211 0.00625272 0.104839 0.0236516 -0.162944 0.0114029 -0.201089 0.0796175 -0.293633 -0.0312517 -0.0688784 0.151052 0.0126527 0.0155205 -0.160365 -0.000574701 -0.0641685 0.0896675 -0.190804 0.0550329 0.0970125 -0.0451128 0.0606544 -0.0151648 -0.125356 0.0401825 0.101634 0.0281035 -0.173165 -0.0806829 0.12045 -0.073967 0.173474 0.0464663 -0.0679771'''

  # input_norm = np.array([float(el) for el in input_norm_raw.split(' ')]).reshape(2, 128, order='F')
  # # print(input_norm)
  # print(f"{input_norm.shape=}")
  # print(input_norm)

  weights_raw = np.genfromtxt('extracted_weights_biases/transformers_0_self_attention_qkv_weight.txt', delimiter=',')
  print(f"{weights_raw=}")
  weights = weights_raw.reshape(128, 384, order='C')
  weights = weights.flatten(order='F').reshape(384, 128, order='C')
  # weights *= 100

  print(f"{weights.shape=}")
  print(f"{weights=}")

#   result = np.matmul(input_norm, weights.T)
#   print(f"{result.shape=}")
#   print(f"{result[0][0]=}")
#   print(f"{result[1][0]=}")
#   print(f"{result[0][1]=}")
#   # print(f"{result[0]=}")
#   # print(f"{result[1]=}")

#   print("-"*10 + '\n'*3)

#   my_linear = MyLinear(in_dim=128)
#   my_linear = my_linear.double()

#   with torch.no_grad():
#     my_linear.linear.weight = nn.Parameter(torch.from_numpy(weights).double())
#     print(my_linear.linear.weight.size())
#     print(my_linear.linear.weight[0][0])
#     print(my_linear.linear.weight[0][1])
#     print(my_linear.linear.weight[1][0])
#     torch_input = torch.from_numpy(input_norm).double()
#     torch_result = my_linear(torch_input)
#     print(f"{torch_result.size()=}")
#     print(f"{torch_result[0][0]=}")
#     print(f"{torch_result[0][1]=}")
#     print(f"{torch_result[1][0]=}")

# # ------------------------------
  # print("-"*10 + '\n'*3)

  # result = np.matmul(input_norm_output, weights.T)
  # print(f"{result.shape=}")
  # print(f"{result[0][0][0]=}")
  # print(f"{result[0][0][1]=}")
  # print(f"{result[0][1][0]=}")
  # print(f"{result[0]=}")
  # print(f"{result[1]=}")

  print("-"*10 + '\n'*3)

  my_linear = MyLinear(in_dim=128)
  my_linear = my_linear.double()

  with torch.no_grad():
    my_linear.linear.weight = nn.Parameter(torch.from_numpy(weights).double())
    print(my_linear.linear.weight.size())
    print(my_linear.linear.weight[0][0])
    print(my_linear.linear.weight[0][1])
    print(my_linear.linear.weight[1][0])
    torch_input = input_norm_output.double()
    torch_result = my_linear(torch_input)
    print(f"{torch_result.size()=}")
    print(f"{torch_result[0][0][0]=}")
    print(f"{torch_result[0][0][1]=}")
    print(f"{torch_result[0][1][0]=}")

  
# ----------transformers.0.self_attention.qkv.weight----------
# (384, 128)
# [[-0.00898834  0.00902199 -0.01533934 ... -0.005541   -0.05873524
#   -0.00996126]
#  [-0.05303931  0.08799385  0.08227132 ... -0.04167942 -0.04918507
#   -0.00189221]
#  [ 0.01941064  0.05720583 -0.00805616 ... -0.07202554  0.00615531
#   -0.05741082]
#  ...
#  [ 0.06110692  0.00345555 -0.05413802 ... -0.03739041 -0.04096637
#    0.03696138]
#  [ 0.04641997  0.05074244  0.0003428  ...  0.08522545 -0.08433212
#    0.01248936]
#  [-0.08507212  0.06609162  0.02735423 ... -0.05896661  0.04827594
#    0.05005991]]
# -0.008988336
# 0.009021994
# -0.053039312

  
  # for o1 in ['C', 'F']:
  #   for o2 in ['C', 'F']:
  #     for dim0, dim1 in [(128, 384)]:
  #       print(f"weights.flatten(order={o1}).reshape({dim0}, {dim1}, order={o2})")
  #       weights = weights.flatten(order=o1).reshape(dim0, dim1, order=o2)

  #       print(f"{weights.shape=}")

  #       result = np.matmul(input_norm, weights)
  #       print(f"{result[0][0]=}")
  #       print(f"{result[1][0]=}")
  #       print(f"{result[0][1]=}")
  #       print(f"{result.shape=}")

  #       print('-'*20)

if __name__ == '__main__':
  case_1()