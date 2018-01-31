#!/usr/bin/python
# -*- coding: UTF-8 -*

import sys
import os
sys.path.append(os.getcwd() + r'/libsvmpy/')
from svmutil import *

# 数据目录
linerData  = os.getcwd() + r'/data/liner.txt'
circleData = os.getcwd() + r'/data/circle.txt'

# 调用libsvm读取数据
Y,X = svm_read_problem(circleData)

# 训练参数，其实就是条件方程的各个参数
arg = '-t 0' # 2 代表高斯核函数

# 训练得到模型m
m = svm_train(Y,X,arg)

# 保存模型m
svm_save_model(r'mod.txt',m)

# 预测结果
# 用的是训练集的数据做预测
svm_predict(Y,X,m)






