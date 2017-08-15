---
title: Ubuntu使用指南
date: 2017-07-29 22:48:22
tags:
  - Ubuntu
  - Linux
comments: true
categories: Linux
---
## 设置
### 设置软件源
``` bash
$ software-properties-gtk
```
<!--more-->

### 编辑源命令
``` bash
$ sudo gedit /etc/apt/sources.list
```

### 更新软件列表
```bash
$ sudo apt-get update  
```
### 更新软件
```bash
$ sudo apt-get upgrade  
```

***

## 常用软件安装

### 提供编译程序必须软件包的列表信息
```bash
$ sudo apt-get install build-essential  
```

### 远程登录服务器
```bash
$ sudo apt-get install ssh 
```

### 分布式版本控制系统
```bash
$ sudo apt-get install git 
$ git config --global user.name "Your Name"  ##设置用户名
$ git config --global user.email "youremail@domain.com"  ##设置email
$ ssh-keygen -t rsa -C "youremail@163.com"  ##创建SSH key
$ vim ~/.ssh/id_rsa.pub  ##拷贝SSH key
```

### 抓包工具
```bash
$ sudo apt-get install wireshark  
```

### 安装手动下载的包的GUI程序
```bash
$ sudo apt install gdebi-core 
```

### 安装lantern
* 下载deb 
* https://github.com/getlantern/lantern/releases/tag/latest

```bash
$ sudo gdebi lantern-installer-beta-64-bit.deb ##安装lantern
$ lantern ##运行
```

### 安装node
#### 安装nvm
```bash
$ git clone https://github.com/creationix/nvm.git && ./nvm/install.sh && . ~/.nvm/nvm.sh  && rm –rf ./nvm
```
#### 使用nvm安装node
```bash
nvm install -version
```

#### 设置淘宝镜像
```bash
npm install -g cnpm --registry=https://registry.npm.taobao.org
```