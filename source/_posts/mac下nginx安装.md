---
title: mac下nginx安装
date: 2017-09-17 22:33:12
tags:
  - macOS
  - nginx
categories: macOS
---

安装:
```bash
$ brew install nginx
```

查看安装信息:
```bash
$ brew info nginx
```

<!-- more -->

start nginx and restart at login:
```bash
$ brew services start nginx
```
关闭nginx服务:
```bash
$ brew services stop nginx
```

if don't want/need a background service just run:
```bash
$ nginx
```

重新加载nginx
```bash
$ nginx -s reload
```

停止nginx
```bash
$ nginx -s stop
```

打开默认服务器文件路径:
```bash
$ open /usr/local/var/www
```

修改nginx配置文件:
```bash
$ cd /usr/local/etc/nginx
$ nano nginx.conf
```
