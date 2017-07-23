---
title: Create A Blog With Hexo
date: 2017-07-23 15:36:52
tags:
  - hexo
---
## Quick Start

### Create a new Github repository
>Repository name 填写 yourname.github.io

<!--more-->
### 下载安装hexo
``` bash
$ npm install -g hexo-cli
```

### 初始化博客
``` bash
$ hexo init <folder>
$ cd <folder>
$ npm install
$ npm install hexo-deployer-git --save
```

### 配置_config.yml
```
    deploy:
        type: git
        repo: git@github.com:yourname/yourname.github.io.git
        branch: master
```

### Create a new post

``` bash
$ hexo new "My New Post"
```

### Run server

``` bash
$ hexo server
```

### Generate static files

``` bash
$ hexo generate
```

### Deploy to remote sites

``` bash
$ hexo deploy
```


## Post Hexo Blogs On Several Computers

### Initialize the local repository
``` bash
$ git init
$ git checkout -b source   //create local branch "source"
$ git add .
$ git commit -m "commit"
$ git remote add origin git@github.com:yourname/yourname.github.io.git
$ git push origin source
```

### On another computer,we need to do
``` bash
$ git init
$ git remote add origin git@github.com:yourname/yourname.github.io.git
$ git fetch
$ git checkout -b source origin/source
```

### Every time before we write blogs,we need to run
``` bash
$ git checkout source
$ git pull origin source
```

### After we finished posting blogs,we need to run
``` bash
$ git add .
$ git commit -m "update"
$ git push origin source
```
