---
title: npm 更换国内源
date: 2018-08-03 16:42:46
  - node
  - npm
categories: node
---

方法一: 单条命令:

```bash
npm --registry https://registry.npm.taobao.org install koa
```

<!-- more -->

方法二: 配置npm:

```bash
npm config set registry https://registry.npm.taobao.org

# 配置后可通过下面方式来验证是否成功
npm config get registry
```

方法三: cnpm:

```bash

使用
npm install -g cnpm --registry=https://registry.npm.taobao.org
# cnpm install koa
```