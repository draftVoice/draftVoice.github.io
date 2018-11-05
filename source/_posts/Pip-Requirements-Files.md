---
title: Pip Requirements Files
date: 2018-11-05 15:08:50
tags:
  - Python
  - pip
categories: Python
---
Generate python package list

```bash
pip freeze >requirements.txt
```

<!-- more -->

The generated file looks like below

```bash
asn1crypto==0.24.0
certifi==2018.8.24
cffi==1.11.5
chardet==3.0.4
conda==4.5.11
cryptography==2.3.1
```

Install package by requirements.txt

```bash
pip install -r requirements.txt
```