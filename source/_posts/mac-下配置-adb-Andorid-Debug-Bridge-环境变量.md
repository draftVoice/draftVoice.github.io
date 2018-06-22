---
title: mac 下配置 adb(Andorid Debug Bridge) 环境变量
date: 2018-06-22 17:10:50
tags:
  - Android
  - macOS
categories: Android
---

```bash
vim ~/.bash_profile
```

<!-- more -->

添加如下内容：

```bash
export PATH=${PATH}:/Users/lixiaoqiang/Library/Android/sdk/platform-tools
export PATH=${PATH}:/Users/lixiaoqiang/Library/Android/sdk/tools
```

验证是否配置成功：

```bash
source ~/.bash_profile
adb
```