---
title: Linux／macOS设置Golang的GOPATH工作路径
date: 2017-10-04 23:08:06
tags:
  - macOS
  - Linux
  - go
categories: go
---
从go 1.8开始，GOPATH环境变量现在有一个默认值，如果它没有被设置。 它在Unix上默认为$HOME/go,在Windows上默认为%USERPROFILE%/go
<!-- more -->
## GOPATH设置
```bash
vi ~/.bash_profile
```
加入：export GOPATH=/Users/username/gopath

想立即生效请运行:
```bash
source ~/.bash_profile
```

查看go环境变量
```bash
go env
```

