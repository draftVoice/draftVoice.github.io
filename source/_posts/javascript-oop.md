---
title: JavaScript OOP
date: 2017-07-23 14:28:20
tags:
  - JavaScript
comments: true
categories: JavaScript
---
### 使用new关键字创建
>最基础的对象创建方式
```javascript
var user = new Object();
user.name = "John";
user.age = "23";
user.consoleName = function(){
	console.log("hello"+this.name)
}
```
***
<!--more-->
### 使用字面量创建
```javascript
var user = {
	name: "John",
	age: "23",
	consoleName: function(){
		console.log("hello"+this.name)
	}
}
```
***

### 工厂模式
>解决了多个相似对象的创建问题,但是不好区分对象的具体类型
```javascript
function newUser(name,age){
	var rU = new Object();
	rU.name = name;
	rU.age = age;
	ru.consoleName = function(){
		console.log("hello"+this.name)
	}
	return rU;
}
var John = newUser("John","22");
var Kim = newUser("Kim","23")
```
***


### 构造函数和原型组合模式
>这里使用构造函数来定义对象的属性，使用原型来定义共享的属性和方法，这样就可以通过传递不同的参数来创建出不同的对象，同时又拥有了共享的方法和属性。
```javascript
function User(name,age){
	this.name = name
	this.age = age
};
User.prototype = {
	contructor : User, //显式的指定User.prototype的contructor属性
	alertName: function(){
		alert("hello"+this.name)
	}
};
var John = new User("John","22")
var Kim = new User("Kim","23")

```
