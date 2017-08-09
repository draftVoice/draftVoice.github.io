---
title: 动态加载JS
date: 2017-08-09 18:43:36
tags:
  - JavaScript
comments: true
categories: JavaScript
---
## 方法一：直接在页面内document.write
```javascript
document.write("<script src='test.js'><\/script>")
```

<!-- more -->

## 方法二：动态创建并添加script元素
```javascript
function loadJs(url){
    var newScript = document.createElement("script")
    newScript.type = "text/javascript";
    newScript.src = url;
    document.body.appendChild(newScript)
}
```

### 方法二补充：添加回调函数
```javascript
function loadJs(url,callback){
    var newScript = document.createElement("script")
    newScript.type = "text/javascript";
    newScript.src = url;
    document.body.appendChild(newScript)

    if(typeof(callback) != "undefined"){
        if (newScript.readyState) {
            newScript.onreadystatechange = function () {
                if (newScript.readyState == "loaded" || newScript.readyState == "complete") {
                    newScript.onreadystatechange = null;
                    callback();
                }
            };
        } else {
            newScript.onload = function () {
                callback();
            };
        }
    }
}
```