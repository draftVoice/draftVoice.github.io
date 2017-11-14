---
title: Installing Apache Maven
date: 2017-11-14 15:26:18
tags:
  - Java
  - Maven
categories: Java
---
# Installing Apache Maven

## Download:

https://maven.apache.org/download.cgi

```bash
unzip apache-maven-3.5.2-bin.zip
```
<!-- more -->
## Install

Check environment variable value
```bash
echo $JAVA_HOME
# 如果结果为空，则需配置JAVA_HOME所在的目录
```

Adding to PATH
```bash
nano ~/.bash_profile

# Maven 环境变量
export PATH=/opt/apache-maven-3.5.2/bin:$PATH

# 配置JAVA_HOME所在的目录
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home

source ~/.bash_profile
```

```bash
#Confirm with mvn -v in a new shell. 

mvn -v

#The result should look similar to
Apache Maven 3.5.2 (138edd61fd100ec658bfa2d307c43b76940a5d7d; 2017-10-18T08:58:13+01:00)
Maven home: /opt/apache-maven-3.5.2
Java version: 1.8.0_45, vendor: Oracle Corporation
Java home: /Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/jre
Default locale: en_US, platform encoding: UTF-8
OS name: "mac os x", version: "10.8.5", arch: "x86_64", family: "mac"
```
