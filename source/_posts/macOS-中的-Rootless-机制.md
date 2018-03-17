---
title: macOS 中的 Rootless 机制
date: 2017-11-25 15:43:07
tags:
  - macOS
  - Rootless
  - Unix/Unix-like
comments: true
categories: macOS
---


## 一、前因

苹果从 OS X El Capitan 10.11 系统开始使用了 Rootless 机制，可以将该机制理解为一个更高等级的系统的内核保护措施，系统默认将会锁定 /system、/sbin、/usr 这三个目录。
<!-- more -->
## 二、后果

Rootless 机制虽然在一定程度上增加了系统的安全性，但作为一名开发人员会经常的操作 /usr 这个目录，这个时候你会发现你使用的任何命令都会提示没有操作权限，即使使用 root 权限也不行。

比如咱们在 /usr 目录下新建一个目录 myl，命令及提示如下：

```bash
$ sudo mkdir myl
Password:
mkdir: myl: Operation not permitted
```

从上面的代码可以看出，即使我们使用了 sudo 授权，还是没操作权限。下面咱们来介绍怎样关闭和开启 Rootless 机制。

## 三、开关 Rootless

关闭和开启 Rootless 非常简单，方法如下：

重启 Mac，听到开机启动声后按下 Command+R，进入恢复模式，在上面的菜单实用工具中找到并打开 Terminal（如果顶部没出现菜单，请继续重启^_^）。输入如下命令：

* 关闭 Rootless
```bash
$ csrutil disable
```
* 开启 Rootless
```bash
$ csrutil enable
```
执行完命令后，重启电脑即可生效。为了系统的安全，建议大家平时都开启 Rootless，只有需要时才暂时关闭。

***

>本文转自 http://www.mayanlong.com/