---
title: Config nginx on linux
date: 2018-12-18 11:38:55
tags:
  - nginx
  - Ubuntu
  - Linux
categories: nginx
---
安装：

```bash
sudo apt-get update
sudo apt-get install nginx
```

<!-- more -->

***

配置文件：

/etc/nginx/sites-available/default

/etc/nginx/nginx.conf

***

常用命令：

sudo service nginx {start|stop|restart|reload|force-reload|status|configtest|rotate|upgrade}