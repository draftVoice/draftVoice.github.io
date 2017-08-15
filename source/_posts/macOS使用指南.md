---
title: macOS使用指南
date: 2017-08-08 12:17:02
tags:
  - macOS
  - Homebrew
comments: true
categories: macOS
---
## 设置

### .DS_Store
>.DS_Store是Mac OS保存文件夹的自定义属性的隐藏文件，如文件的图标位置或背景色，相当于Windows的desktop.ini。

#### 禁止.DS_store生成（重启Mac即可生效）：
```bash
$ defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE 
```
<!-- more -->
#### 恢复.DS_store生成（重启Mac即可生效）： 
```bash
$ defaults delete com.apple.desktopservices DSDontWriteNetworkStores
```

#### 删除所有.DS_Store文件
```bash
sudo find / -name ".DS_Store" -depth -exec rm {} \
```

***

## 常用软件安装

### 安装Homebrew (macOS软件包管理器)
>官网： https://brew.sh/index_zh-cn.html

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

<!-- more -->

#### 更换默认源

>Homebrew的更新源由三部分组成：本体（brew.git）、核心（homebrew-core.git）以及二进制预编译包（homebrew-bottles）。
>默认官方的更新源都是存放在GitHub上的，所以我们会倾向于选择国内提供的更新源，可以提高访问速度。（本文中默认更换的是中国科大的软件源）

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

#### 重置回默认源
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

***

## 快捷键
* Command+Shift+.  显示隐藏文件夹