---
title: macOS更换和重置Homebrew默认源
date: 2017-08-08 12:17:02
tags:
  - macOS
  - Homebrew
comments: true
categories: macOS
---

## 前言
* Homebrew的更新源由三部分组成：本体（brew.git）、核心（homebrew-core.git）以及二进制预编译包（homebrew-bottles）。
* 默认官方的更新源都是存放在GitHub上的，所以我们会倾向于选择国内提供的更新源，可以提高访问速度。（本文中默认更换的是中国科大的软件源）
<!-- more -->

## 更换默认源
```bash
# 替换brew.git:
$ cd "$(brew --repo)"
$ git remote set-url origin https://mirrors.ustc.edu.cn/brew.git

# 替换homebrew-core.git:
$ cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
$ git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git

# 增加homebrew-bottles环境变量:
$ echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile
$ source ~/.bash_profile

# 更新软件源:
$ brew update

# 更新现有软件
$ brew upgrade

# 清理旧有的软件包
$ brew cleanup
```

## 重置回默认源
```bash
# 重置brew.git:
$ cd "$(brew --repo)"
$ git remote set-url origin https://github.com/Homebrew/brew.git

# 重置homebrew-core.git:
$ cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
$ git remote set-url origin https://github.com/Homebrew/homebrew-core.git

# 删除环境变量HOMEBREW_BOTTLE_DOMAIN

# 更新软件源
$ brew update
```