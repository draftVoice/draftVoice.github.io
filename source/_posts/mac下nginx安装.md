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

启动:
```bash
$ nginx
```

<!-- more -->

打开默认服务器文件路径:
```bash
$ open /usr/local/var/www
```

修改nginx配置文件:
```bash
$ cd usr/local/etc/nginx
$ nano nginx.conf
```



Docroot is: /usr/local/var/www

The default port has been set in /usr/local/etc/nginx/nginx.conf to 8080 so that
nginx can run without sudo.

nginx will load all files in /usr/local/etc/nginx/servers/.

To have launchd start nginx now and restart at login:
  brew services start nginx
Or, if you don't want/need a background service you can just run:
  nginx