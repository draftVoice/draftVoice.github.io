---
title: Enable NTFS Write Support in macOS
date: 2018-04-07 19:21:23
tags:
  - macOS
  - NTFS
  - Unix/Unix-like
categories: macOS
---
方法一：

```bash
$ cd /etc
$ sudo vim fstab

# 文件中添加如下信息(Volumes_name即硬盘名称):
LABEL=Volumes_name none ntfs rw,auto,nobrowse
```

方法二:

```bash
#查询硬盘UUID
$ diskutil info /Volumes/Volumes_name

$ sudo vim /etc/fstab

# 文件中添加如下信息(Volumes_UUID即硬盘UUID):
UUID=Volumes_UUID none ntfs rw,auto,nobrowse
```

<!-- more -->

重新插入硬盘:
```bash
$ cd /Volumes/Volumes_name
$ open .
```
