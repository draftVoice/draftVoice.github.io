---
title: Linux & Mac curl 命令行使用
date: 2017-09-19 14:59:49
tags:
  - macOS
  - Linux
  - curl
categories: macOS
---
>curl文档：https://curl.haxx.se/docs/manual.html

get the main page:
```bash
$ curl xiaoqiangli.com
```
<!-- more -->
save the main page to local:
```bash
$ curl xiaoqiangli.com > xiaoqiangli.html
#or
$ curl -o xiaoqiangli.html xiaoqiangli.com
```

ajax get：
```bash
$ curl http://www.xiaoqiangli.com/login?user=username&password=password
```

ajax post：
```bash
$ curl -d "user=username&password=password" http://www.xiaoqiangli.com
```

upload file:
```bash
#ftp
curl -T localfile -u name:passwd ftp://upload_site:port/path/

#http:
curl -T localfile http://www.xiaoqiangli.com/file
```