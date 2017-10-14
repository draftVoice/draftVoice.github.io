---
title: mac下安装使用MySQL
date: 2017-10-14 15:04:09
tags:
  - macOS
  - MySQL
categories: macOS
---

## 下载:
* MySQL官网：https://dev.mysql.com/downloads/mysql/
* 下载 DMG Archive 版本

<!-- more -->

## 安装:
* 双击下载的.dmg文件，按照提示点击下一步。
* 在最后一步的时候会出现提示框，这里要注意一下，要记下提示框中的内容，这个是MySQL的默认密码;

## 使用:
* 安装成功后，打开“系统偏好设置”，点击MySQL图标，点击 “Start MySQL Server”，启动MySQL。

```bash
#进入MySQL默认目录
cd /usr/local/mysql/bin

#修改密码
./mysqladmin -u root -p password

#登录MySQL
./mysql -u root -p

#退出
quit

```

## 简化使用命令:

```bash
#添加别名
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'

#关闭terminal后上述设置别名就会失效，所以应将上述命令添加至bashrc文件的末尾
sudo nano /etc/bashrc
```

