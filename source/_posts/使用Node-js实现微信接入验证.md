---
title: 使用Node.js实现微信接入验证
date: 2017-08-08 10:45:36
tags:
  - node
  - 微信
comments: true
categories: node
---
微信的接口只支持80端口，所以如果设置其他端口，需要通过Nginx把域名反向代理到该端口。
<!-- more -->

```javascript
var express = require('express');   ／／这里使用了express框架
var app = express();
var crypto = require('crypto');     ／／node自带的加密解密模块
const token = 'token'

app.get('/wx',(req,res,next)=>{
    var signature = req.query.signature;
    var timestamp = req.query.timestamp;
    var nonce = req.query.nonce;
    var echostr = req.query.echostr;

    var array = new Array(token,timestamp,nonce);
    array.sort();
    var str = array.toString().replace(/,/g,"");

    var sha1Code = crypto.createHash("sha1");
    var code = sha1Code.update(str,'utf-8').digest("hex");

    if(code===signature){
        res.send(echostr)
    }else{
        res.send("error");
    }
})

app.listen(80,()=>{
    console.log('listen on 80')
})
```


