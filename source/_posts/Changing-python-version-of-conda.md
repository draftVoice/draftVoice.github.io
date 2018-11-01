---
title: Changing python version of conda
date: 2018-11-01 19:52:31
  - Python
  - pip
  - conda
categories: Python
---

<!-- more -->

```bash
# Create a python 3.6 environment named env_py3
conda create --name env_py3 python=3.6

# Create a python 2.7 environment named env_py2
conda create --name env_py2 python=2.7

# Activate the environment
activate env_py2 # windows
source activate env_py2 # linux/mac

# change to python 3.6
activate env_py3
```