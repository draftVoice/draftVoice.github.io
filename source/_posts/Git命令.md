---
title: Git命令
date: 2018-02-01 11:31:39
tags:
  - Git
comments: true
categories: Git
---
[Git官网](https://git-scm.com/)

[Documentation](https://git-scm.com/docs)

<!-- more -->

## Git从远程的分支获取最新的版本到本地

### git fetch + git log + git merge

```bash
git fetch origin master

git log -p master..origin/master

git merge origin/master
```

### git fetch + git diff + git merge

```bash
git fetch origin master:tmp

git diff tmp

git merge tmp
```

### git pull

```bash
git pull origin master
# 相当于git fetch + git merge
```