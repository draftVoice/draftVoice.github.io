---
title: mac下使用dd命令将镜像写入u盘
date: 2018-08-22 17:39:43
tags:
  - macOS
  - terminal
  - Unix/Unix-like
categories: Unix/Unix-like
---
1、 Print a list of attached volumes on the Mac:

```bash
diskutil list
```

<!-- more -->

2、卸载目标驱动器

```bash
sudo umount /dev/(IDENTIFIER)
# IDENTIFIER 为目标驱动器标志符（卷标）
```

3、Format the target drive and 'burn' the ISO to that USB volume:

```bash
sudo dd if=源路径  of=/dev/r卷标  bs=1m
# 'r' 会让命令执行加快一点
# 'bs' 为一次填充的容量

# e.g.
# sudo dd if=~/Downloads/Windows10_x64_EN-US.iso of=/dev/rdisk2  bs=1m
```

4、完成后弹出

```bash
diskutil eject /dev/(IDENTIFIER)
```