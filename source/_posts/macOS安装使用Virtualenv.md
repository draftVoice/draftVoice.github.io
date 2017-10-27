---
title: macOS安装使用Virtualenv
date: 2017-10-27 13:14:15
tags:
  - macOS
  - Python
  - Virtualenv
categories: Python
---

virtualenv是用来创建一套隔离的Python运行环境，解决了不同应用间多版本的冲突问题。

安装virtualenv:
```bash
pip3 install virtualenv
```
<!-- more -->

使用virtualenv创建一套独立的Python运行环境:
```bash
# 创建并进入目录
$ mkdir newDirectory
$ cd newDirectory

# 创建运行环境：
# --no-site-packages ==> 不带第三方包的python运行环境
$ virtualenv --no-site-packages env 

# 进入该环境  If using bash, sh, ksh, or zsh
$ source env/bin/activate 

# ==> 命令行前缀变更成了刚刚创建的(env)环境
(env)$ 

# ==> 查看(env)环境中的pip版本
(env)$ pip -V 

# ==> 查看(env)环境中的python版本
(env)$ python -V 

#退出当前环境
(env)$ deactivate 
```