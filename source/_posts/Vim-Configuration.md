---
title: Vim Configuration
date: 2018-03-17 16:00:00
tags:
  - vi/vim
  - Unix/Unix-like
comments: true
categories: vi/vim
---
First we can find installed vim colorschemes files in the colors subdirectory of vim installation directory. All the files end with the file extension .vim, and begin with the name of the colorscheme.

```bash
#directory on my macOs system
cd /usr/share/vim/vim80/colors
ls
```

<!-- more -->

Then create a .vimrc file that will contain most configuration:

```bash
cd ~
vim .vimrc
```

Edit .vimrc file and add these lines:

```vim
set number "设置行号
set wrap "设置自动换行 nowrap/wrap
set shiftwidth=4 "默认缩进4个空格
set softtabstop=4  "BackSpace
set tabstop=4  "tab space
colorscheme pablo "主题
syntax on "语法高亮
set laststatus=2 "显示状态栏 (默认值为1, 无法显示状态栏)
set background=dark
set encoding=utf-8 "charset 
```
