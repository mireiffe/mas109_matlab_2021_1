import matplotlib.pyplot as plt
from scipy.io import savemat
import numpy as np
import torch
from torch.serialization import save

tr = torch.load('/home/omq/mas109_matlab_2021_1/files/MNIST/processed/training.pt')
ts = torch.load('/home/omq/mas109_matlab_2021_1/files/MNIST/processed/test.pt')

# dict_tr = []
# dict_lb = []
# for i, [x, t] in enumerate(zip(*tr)):
#     # plt.imshow(x); plt.title(t); plt.show()
#     dict_tr.append(x.numpy())
#     dict_lb.append(int(t))
# savemat('files/MNIST/processed/training_image.mat', {'train_x': np.transpose(dict_tr, (1, 2, 0))})
# savemat('files/MNIST/processed/training_target.mat', {'train_y': dict_lb})

dict_ts = []
dict_lt = []
for i, [x, t] in enumerate(zip(*ts)):
    # plt.imshow(x); plt.title(t); plt.show()
    dict_ts.append(x.numpy())
    dict_lt.append(int(t))
savemat('files/MNIST/processed/test_image.mat', {'test_x': np.transpose(dict_ts, (1, 2, 0))})
savemat('files/MNIST/processed/test_target.mat', {'test_y': dict_lt})
    

