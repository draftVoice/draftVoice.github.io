---
title: 给树莓派写入 Kali Linux 系统
date: 2019-02-24 15:29:26
tags:
  - Raspberry Pi
  - Unix/Unix-like
categories: Raspberry Pi
---

## 准备工作：

* 在 [Kali Linux](https://www.offensive-security.com/kali-linux-arm-images/)官网下载兼容树莓派的镜像，解压出.img文件。我选择的镜像是 RaspberryPi Foundation => Kali Linux RPi

* tf(Micro SD) 卡一张

<!-- more -->

## 开始写入：
```bash
diskutil list
#查看tf卡在哪个disk上

sudo diskutil unmountDisk /dev/disk[n]

sudo dd bs=1m if=[path].img of=/dev/disk[n]

sudo diskutil eject /dev/disk[n]
```

## 开启树莓派：

写好系统后，将tf卡装入树莓派，连接hdmi，接上电源树莓派就自己启动了。

Kali linux 的初始用户名为 root, 初始密码为 toor

如果要修改管理员密码，打开终端，输入

```
passwd
```

桌面右上角连接wifi

## 中文乱码问题：

```bash
apt-get install locales

dpkg-reconfigure locales
#进入图形化界面之后，（空格是选择，Tab是切换，*是选中），选中en_US.UTF-8和zh_CN.UTF-8，确定后，将en_US.UTF-8选为默认。 

apt-get install xfonts-intl-chinese
apt-get install ttf-wqy-microhei
#安装中文字体
```

## 命令行关机和重启

关机的几种方法：

```bash
sudo shutdown -h now
sudo halt
sudo poweroff
sudo init 0
```

重启的几种方法：

```
sudo reboot
shutdown -r now
```
