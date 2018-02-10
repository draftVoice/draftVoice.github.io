---
title: IP查询API
date: 2017-10-22 10:50:36
tags:
 - IP
 - API
 - JavaScript
categories: JavaScript
---

## 获取访问客户端IP地址

### 搜狐 API（JS callback）

API: http://pv.sohu.com/cityjson?ie=utf-8

e.g.

```javascript
<script src="http://pv.sohu.com/cityjson?ie=utf-8"></script>
<script type="text/javascript">
    console.log(returnCitySN)
</script>
```

***

<!-- more -->

## 根据IP地址获取具体的省份、isp等信息

### 新浪IP库

#### 方式一: Ajax

API: http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json

e.g.

```js
ajax({
    url: "http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json",
    type: 'get',
    success: function (res) {}
})
```

#### 方式二: JS callback

API: http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js&ip=[IP地址]

e.g.

```javascript

<script src="http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js&ip=[IP地址]"></script>
<script type="text/javascript">
    console.log(remote_ip_info)
</script>
```

***

### 腾讯IP库（获取JSON）

网址：http://lbs.qq.com/webservice_v1/index.html

API: http://apis.map.qq.com/ws/location/v1/ip

e.g.

```javascript

ajax({
    url: "http://apis.map.qq.com/ws/location/v1/ip",
    jsonp: 'jsonpCallbak',
    data: {
        ip: [ip地址],
        key: '这里添加注册好的key',
        output: 'jsonp'
    },
    success: function (res) {}
})
```

***

### 淘宝IP库（获取JSON）

API: http://ip.taobao.com/service/getIpInfo.php?ip=[IP地址]