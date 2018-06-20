---
title: macOS 下动态切换JDK版本
date: 2018-06-21 00:57:22
tags:
  - Java
  - macOS
categories: Java
---

```bash
vim ~/.bash_profile
```

<!-- more -->

在.bash_profile中添加以下内容：

```bash
# 配置JAVA_HOME所在的目录
export JAVA_6_HOME=/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home

# 创建默认的jdk版本
export JAVA_HOME=$JAVA_6_HOME

# 创建alias命令，实现动态切换
alias jdk8='export JAVA_HOME=$JAVA_8_HOME'
alias jdk7='export JAVA_HOME=$JAVA_7_HOME'
alias jdk6='export JAVA_HOME=$JAVA_6_HOME'
```

```bash
source ~/.bash_profile
# 使配置生效
```