---
title: vim 删除第 n 行到第 m 行
date: 2018-10-08 19:38:13
tags:
  - vi/vim
categories: vi/vim
---

打开某个文件

```bash
vim demo.vim
```

<!-- more -->

```vim
# 命令模式下

# 设置显示行号
:set number

# 定位到第 m 行
:m

# 删除第 n 行到第 m 行
:n,.d
```