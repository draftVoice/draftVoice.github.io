---
title: Git的使用
date: 2018-02-01 11:31:39
tags:
  - Git
comments: true
categories: Git
---
[Git官网](https://git-scm.com/)

[Documentation](https://git-scm.com/docs)

<!-- more -->

## 配置Git

```bash
git config --global user.name "Your Name"  ##设置用户名
git config --global user.email "youremail@domain.com"  ##设置email

ssh-keygen -t rsa -C "youremail@domain.com"  ##创建SSH key

#查看SSH key
cat ~/.ssh/id_rsa.pub
```

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

## 删除远程分支

```bash
git push origin --delete <BranchName>
```

## 拉取远程分支并创建本地分支

```bash
git checkout -b <BranchName> origin/<BranchName>
```

## 强制推送本地分支到远程分支（覆盖远程分支）

```bash
git push -f origin <BranchName>
```