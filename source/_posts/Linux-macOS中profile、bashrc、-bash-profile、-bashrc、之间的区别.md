---
title: Linux / macOS中/etc/profile、/etc/bashrc、~/.bash_profile、~/.bashrc、之间的区别
date: 2017-10-18 15:54:32
tags:
  - macOS
  - Linux
categories: Linux

---


============

/etc/profile

============

此文件为系统的每个用户设置环境信息,当用户第一次登录时,该文件被执行.并从/etc/profile.d目录的配置文件中搜集shell的设置.

<!-- more -->
***

===========

/etc/bashrc

===========

为每一个运行bash shell的用户执行此文件.当bash shell被打开时,该文件被读取.
***

===============

~/.bash_profile

===============

每个用户都可使用该文件输入专用于自己使用的shell信息,当用户登录时,该文件仅仅执行一次!默认情况下,他设置一些环境变量,执行用户的.bashrc文件.
***
=========

~/.bashrc

=========

该文件包含专用于你的bash shell的bash信息,当登录时以及每次打开新的shell时,该文件被读取.
***

==========

~/.profile

==========

在Debian中使用.profile文件代 替.bash_profile文件

.profile(由Bourne Shell和Korn Shell使用)和.login(由C Shell使用)两个文件是.bash_profile的同义词，目的是为了兼容其它Shell。在Debian中使用.profile文件代 替.bash_profile文件。
***

==============

~/.bash_logout

==============

当每次退出系统(退出bash shell)时,执行该文件. 