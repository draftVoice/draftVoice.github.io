---
title: pip conda 切换国内源
date: 2018-10-17 20:41:44
tags:
  - Python
  - pip
  - conda
categories: Python
---

## conda 切换国内镜像

```bash
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --set show_channel_urls yes
```

<!-- more -->

## pip 切换国内镜像

修改 ~/.pip/pip.conf (没有就创建一个)，内容如下:

```bash
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
```

***

pip 临时镜像

使用 pip 命令时添加参数 -i https://pypi.tuna.tsinghua.edu.cn/simple

e.g.

```bash
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorflow
```