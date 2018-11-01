---
title: Changing python version of conda
date: 2018-11-01 19:52:31
  - Python
  - pip
  - conda
categories: Python
---

Create an environment

```bash
# Create a python 3.6 environment named env_py3
conda create --name env_py3 python=3.6
```

<!-- more -->

Activate this environment

```bash
# On Linux and Mac OS X
$ source activate env_py3

# On Windows
> activate env_py3
```

Go back to the base environment

```bash
# On Linux and Mac OS X
$ source deactivate

# On Windows
> deactivate
```

***

[Conda](https://github.com/conda/conda)