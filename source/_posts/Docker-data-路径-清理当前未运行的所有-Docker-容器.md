---
title: Docker data 路径 / 清理当前未运行的所有 Docker 容器
date: 2018-10-07 01:52:20
tags:
  - Docker
categories: Docker
---
#### Data 路径

~/Library/Containers/com.docker.docker/Data

<!-- more -->

#### 清理当前未运行的所有 Docker 容器：

```bash
docker system prune
```