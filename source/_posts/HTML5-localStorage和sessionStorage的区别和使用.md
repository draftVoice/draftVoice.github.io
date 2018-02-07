---
title: HTML5 localStorage和sessionStorage的区别和使用
date: 2017-09-18 13:35:56
tags:
  - HTML 
  - localStorage 
  - sessionStorage
categories: Html
---

* localStorage和sessionStorage一样都是用来存储客户端临时信息的对象。

* 他们均只能存储字符串类型的对象（虽然规范中可以存储其他原生类型的对象，但是目前为止没有浏览器对其进行实现）。

* localStorage生命周期是永久，这意味着除非用户显示在浏览器提供的UI上清除localStorage信息，否则这些信息将永远存在。

* sessionStorage生命周期为当前窗口或标签页，一旦窗口或标签页被永久关闭了，那么所有通过sessionStorage存储的数据也就被清空了。

<!-- more -->

* 不同浏览器无法共享localStorage或sessionStorage中的信息。相同浏览器的不同页面间可以共享相同的 localStorage（页面属于相同域名和端口），但是不同页面或标签页间无法共享sessionStorage的信息。这里需要注意的是，页面及标 签页仅指顶级窗口，如果一个标签页包含多个iframe标签且他们属于同源页面，那么他们之间是可以共享sessionStorage的。

* localStorage和sessionStorage使用时使用相同的API：

```javascript
localStorage.setItem("key","value");//以“key”为名称存储一个值“value”

localStorage.getItem("key");//获取名称为“key”的值
```

* 枚举localStorage的方法：

```javascript
for(var i=0;i<localStorage.length;i++){
     var name = localStorage.key(i)​;
     var value = localStorage.getItem(name);​
}
```

* 删除localStorage中存储信息的方法：

```javascript
localStorage.removeItem("key");//删除名称为“key”的信息。
localStorage.clear();​//清空localStorage中所有信息
```

* 通过getItem或直接使用localStorage["key"]获取到的信息均为实际存储的副本。

>例如：
```javascript
localStorage.key = {value1:"value1"}​;
localStorage.key.value1='a'​;
```
>这里是无法​对实际存储的值产生作用的，下面的写法也不可以：
```javascript
​localStorage.getItem("key").value1="a";
```