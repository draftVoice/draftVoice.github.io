---
title: Installing TensorFlow on Mac OS X
date: 2017-10-27 15:11:34
tags:
  - macOS
  - Python
  - pip
  - 机器学习
  - TensorFlow
categories: 机器学习
---

>TensorFlow™ 是一个使用数据流图进行数值计算的开源软件库。图中的节点代表数学运算， 而图中的边则代表在这些节点之间传递的多维数组（张量）。这种灵活的架构可让您使用一个 API 将计算工作部署到桌面设备、服务器或者移动设备中的一个或多个 CPU 或 GPU。 TensorFlow 最初是由 Google 机器智能研究部门的 Google Brain 团队中的研究人员和工程师开发的，用于进行机器学习和深度神经网络研究， 但它是一个非常基础的系统，因此也可以应用于众多其他领域。

<!-- more -->

* 官网：https://www.tensorflow.org/
* github: https://github.com/tensorflow/tensorflow

### Installing:
```bash
pip install --upgrade tensorflow      # for Python 2.7
pip3 install --upgrade tensorflow     # for Python 3.n

# 下载速度慢的话，建议使用国内镜像 
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorflow
```

### Validate installation
```python
# Python
import tensorflow as tf
hello = tf.constant('Hello, TensorFlow!')
sess = tf.Session()
print(sess.run(hello))
```