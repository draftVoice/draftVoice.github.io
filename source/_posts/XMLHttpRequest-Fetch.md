---
title: XMLHttpRequest || Fetch
date: 2017-08-18 17:13:01
tags:
  - JavaScript
  - ajax
categories: JavaScript
---
### XMLHttpRequest的封装和调用

#### 封装：
<!-- more -->
```javascript
function Ajax(options){
    var url = options.url || '',
        method = options.method.toLowerCase() || 'get',
        data = options.data || '',
        callback = options.callback || '',
        async = options.async || true,
        header = options.header || ''

    //get请求
    if(method == 'get'){
        if(typeof data == 'object'){
            data = [];
            for (var k in data){
                data.push(k + '=' + data[k]);
                data.join('&');
            }
        }
        url += (url.indexOf('?' == -1) ? '?' : '') + data;
    }

    //post请求
    if(method == 'post'){
        if(typeof data == 'object'){
            var arrs = [];
            for (var k in data){
                arrs.push(k + '=' + data[k]);
            }
            data = arrs.join('&');
        }
    }

    //创建发送请求
    var xhr = window.XMLHttpRequest ?  new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP'); //兼容低版本ie
    xhr.open(method,url,async);
    if(method == 'post'){
        //setRequestHeader
        if(header == ''){
            xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded')
        }else{
            header(xhr);                
        }
        xhr.send(data);
    }else{
        xhr.send(null);
    }
    //异步请求
    if(async == true){
        xhr.onreadystatechange = function(){
            if(xhr.readyState == 4){
                callcall();
            }
        }
    }
    //同步请求
    if(async == false){
        callcall();
    }
    //返回状态判断
    function callcall(){
        if(xhr.status == 200){
            return callback(JSON.parse(xhr.responseText));
        }else{
            return callback(xhr.status + xhr.statusText);
        }
    }
}
```
#### 调用：get || post
```javascript
Ajax({
    method:'post', // or 'get'
    url:'http://localhost:3000/api/notes',
    header: function(req){
        req.setRequestHeader('Content-Type','application/json');
        req.setRequestHeader('Accept', 'application/json');  
    },
    data:JSON.stringify({
        //key : value
    }),
    callback:function(res){
        console.log(res)
    }
})
```

***
### Fetch api
* 目前只有新款浏览器支持
* 兼容Ie需要添加插件：https://github.com/github/fetch
```javascript
fetch("http://localhost:3000/api/notes",{
    method:"POST", //or 'get'
    headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
    },
    body: JSON.stringify({
        //key ： value
    })
}).then((res) => {
        console.log(res)
        return res.json().then(
            (json) => {
                console.log(json)
            }
        )
    }
}).catch((error)=>{
    console.log(error)
})
```
