---
title: mac下nginx安装
date: 2017-09-17 22:33:12
tags:
  - macOS
  - nginx
categories: macOS
---

```bash
brew install nginx
```

```bash
nginx
```

```bash
open /usr/local/var/www
```

<!-- more -->

Docroot is: /usr/local/var/www

The default port has been set in /usr/local/etc/nginx/nginx.conf to 8080 so that
nginx can run without sudo.

nginx will load all files in /usr/local/etc/nginx/servers/.

To have launchd start nginx now and restart at login:
  brew services start nginx
Or, if you don't want/need a background service you can just run:
  nginx