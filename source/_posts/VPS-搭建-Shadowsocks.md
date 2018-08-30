---
title: VPS 搭建 Shadowsocks
date: 2018-08-30 14:07:32
tags: 
  - Shadowsocks
categories: Shadowsocks
---
### VPS 搭建 Shadowsocks

System: Debian 7 x64

<!-- more -->

#### 1. 使用 ssh 连接 VPS

#### 2. 安装锐速加速优化

```bash
wget -N — no-check-certificate https://raw.githubusercontent.com/91yun/serverspeeder/master/serverspeeder-all.sh && bash serverspeeder-all.sh
```

#### 3. 安装 Shadowsocks

下载脚本：

```bash
wget — no-check-certificate -O shadowsocks.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks.sh
```

更改权限：

```bash
chmod +x shadowsocks.sh
```

运行脚本，开始安装：

```bash
./shadowsocks.sh 2>&1 | tee shadowsocks.log
```

#### 4. 重启VPS

shadowsocks搭建完成

***

### 多用户配置

修改/创建配置文件:

```bash
vim /etc/shadowsocks.json
```

配置信息:

```json
{
    "server":"0.0.0.0",
    "local_address":"127.0.0.1",
    "local_port":1080,
    "port_password":{
         "8989":"password0",
         "9001":"password1",
         "9002":"password2",
         "9003":"password3",
         "9004":"password4"
    },
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false
}
```

重启 shadowsocks 生效：

```bash
/etc/init.d/shadowsocks restart
```

多用户配置完成

***

### shadowsocks命令

```bash
/etc/init.d/shadowsocks start      # 启动
/etc/init.d/shadowsocks stop       # 停止
/etc/init.d/shadowsocks restart    # 重启
/etc/init.d/shadowsocks status     # 状态
```

***

### 客户端下载

Mac: [ShadowsocksX-NG](https://github.com/shadowsocks/ShadowsocksX-NG/releases)

Windows: [shadowsocks-windows](https://github.com/shadowsocks/shadowsocks-windows/releases)

Android: [shadowsocks-android](https://github.com/shadowsocks/shadowsocks-android/releases)