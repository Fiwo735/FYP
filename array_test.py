import numpy as np
import csv
import torch

torch.set_printoptions(profile='full', sci_mode=False, threshold=2097152)

x_data = '29.938385009765625 178.55862426757812 -67.51207733154297 193.2311248779297 0.17523084580898285 181.0510711669922 0.1761978417634964 -0.3647479712963104 0.008448980748653412 -0.0 1.4046745300292969 0.000455104949651286 0.0 0.008461219258606434 -0.34938931465148926 6.123234262925839e-17'
x = np.array([float(el) for el in x_data.split(' ')])

def read_data():
  t = []
  with open('extracted_weights_biases/inp_layer_weight.txt', 'r') as infile:
    for el in infile:
      t = np.array([float(el) for el in el.split(',')])
  return t

def transform_like_HLS(t):
  return t.reshape(16, 128).flatten(order='F')

def revert_HLS_read(t):
  return t.reshape(16, 128, order='F').flatten(order='C')

# W = transform_like_HLS(revert_HLS_read(read_data()))
W = transform_like_HLS(read_data())
# W = read_data()
# W = revert_HLS_read(transform_like_HLS(read_data()))



b_data = '-0.13000548725358962, 0.15321474786081246, 0.12929527674052557, 0.015206950508695275, 0.23447747558185644, 0.09874022281814714, 0.08055443812192893, 0.09708138089159975, -0.07273779311405582, -0.12322893275532082, 0.16638944719546161, -0.0380457062048275, -0.20809643746408354, 0.04636303598221752, -0.20849156361063526, -0.15630856766465812, 0.019939414314105005, -0.16307167763540578, 0.13211308506049915, 0.04850441757396684, -0.09605553168035963, 0.20517953883247553, -0.0408014574744629, -0.22652685286299823, 0.0032850375610422246, -0.22111437002391734, -0.0880627388591199, -0.11984570212060142, 0.15678703319760884, -0.14426147915908177, 0.11157324693706362, 0.1877708760096317, -0.24377023986353905, -0.10699731327490204, -0.1952664140062446, 0.1366991235539754, 0.008239823194571864, 0.0874801104650833, 0.14869336991091753, -0.18322061544820797, -0.1777989928778831, -0.016878166650835174, 0.05496910612179433, 0.20661068647095915, -0.05943587907088381, -0.24288547842567945, -0.22713314446368765, 0.2465288022714794, 0.021385598861928857, -0.08325646337390469, 0.10686191047424619, 0.10676398985397025, -0.1633541553777138, -0.14952053865999454, 0.19915420681385843, 0.19434344422812577, -0.037831224849853795, -0.2045501259373567, -0.1148028831831879, -0.0880642920004664, 0.018541760343543365, 0.07898868376789869, -0.20087723036054073, 0.08877956109138797, -0.07548296276593816, 0.08422281814314962, -0.1711215736333881, -0.016183058909840634, -0.2372349461674604, 0.13729433629661408, 0.1453569999605651, 0.12664026308996867, 0.08795013021367319, -0.06395550856608195, 0.007341727299098417, 0.14988690935009433, 0.02718889977683301, -0.0774961605130109, -0.18716313122256875, -0.2141118183176563, 0.22251814368767156, 0.0965662375998225, -0.18929985167605012, -0.24342734586290096, -0.07715175155848142, 0.002901013650594975, -0.06282506813712062, 0.1854011302119078, 0.05603784210655197, 0.16435496283300896, -0.1116496321861801, 0.23209457393288221, -0.14106338057169604, 0.24824387425689096, -0.19459800833927585, 0.1554442863288982, -0.21786285020126947, 0.08693781040991075, 0.05889466432744567, -0.15008649518130698, -0.09922898795523674, 0.11174678126515006, 0.1950289181500067, 0.14313260797022276, 0.06399799977414075, -0.21927662166126963, 0.10037644803307723, -0.022731347992944115, -0.11744471022481108, -0.14947014731247013, -0.04559797825776891, -0.1809006827788517, 0.11896195525425354, -0.1541681865731511, 0.1988955903280805, -0.07942795574391706, -0.19091740893201584, 0.18847534823639128, 0.06740288058960743, 0.0891185801504262, -0.04352037047977531, 0.008459298617431572, -0.23532159044450404, 0.11748434002225557, 0.12400449475606388, 0.11770784626843835, -0.1929820439264993, -0.0980418463339387'
b = np.array([float(el) for el in b_data.split(',')])

print(len(x))
print(len(W))
print(len(b))

x_t = torch.from_numpy(x)
W_t = torch.from_numpy(W.reshape(128, 16))
b_t = torch.from_numpy(b)

print(x_t.shape)
print(W_t.shape)
print(b_t.shape)

y_t = torch.matmul(x_t, torch.transpose(W_t, 0, 1)) + b_t

print(y_t.shape)



print(x_t)
# print(W_t)
# print(b_t)
print(y_t)