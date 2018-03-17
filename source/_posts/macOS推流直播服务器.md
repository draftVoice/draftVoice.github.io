---
title: macOS推流直播服务器
date: 2017-12-13 23:29:58
tags:
  - macOS
  - nginx
  - FFmpeg
  - Unix/Unix-like
categories: FFmpeg
---

## 安装nginx-full和rtmp模块

```bash
#clone nginx项目到本地:
brew tap homebrew/nginx

brew install nginx-full --with-rtmp-module
```

安装成功可以使用以下命令查看nginx信息:
```bash
brew info nginx-full
```
<!-- more -->

## 修改nginx配置文件

```bash
nano /usr/local/etc/nginx/nginx.conf
```
在最外层添加rtmp配置信息:
```
rtmp {
   server {
        #监听的端口号,rtmp协议的默认端口号是1935
        listen 1935;
        #直播流配置,访问路径是rtmplive
        application rtmplive {
            #开启实时
            live on;
            #为rtmp引擎设置最大连接数.默认为off
            max_connections 1024;
            #不记录数据
            record off;
        }
    }
}
```
```bash
nginx -s reload
```

## 使用FFmpeg推流到nginx rtmp server
### 安装FFmpeg:
```bash
brew install ffmpeg
```

### 推流命令行:
```bash
ffmpeg -re -i $file_name -vcodec copy -f flv rtmp://localhost:1935/rtmplive/room
```
