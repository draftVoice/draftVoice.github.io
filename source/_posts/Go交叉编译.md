---
title: Go交叉编译
date: 2017-10-20 13:38:18
  - Go
categories: Go
---
### Mac 下编译 Linux 和 Windows 64位可执行程序
```bash
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build main.go
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build main.go
```

<!-- more -->

### Linux 下编译 Mac 和 Windows 64位可执行程序
```bash
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build main.go
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build main.go
```
### Windows 下编译 Mac 和 Linux 64位可执行程序
```bash
SET CGO_ENABLED=0
SET GOOS=darwin
SET GOARCH=amd64
go build main.go

SET CGO_ENABLED=0
SET GOOS=linux
SET GOARCH=amd64
go build main.go
```
### 参数说明
* CGO_ENABLED: 交叉编译不支持 CGO 所以要禁用它
* GOOS：目标平台的操作系统（darwin、freebsd、linux、windows） 
* GOARCH：目标平台的体系架构（386、amd64、arm）
    * amd64 => 64位可执行程序
    * 386 => 32位可执行程序