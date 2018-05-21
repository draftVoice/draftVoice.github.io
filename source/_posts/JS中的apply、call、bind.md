---
title: JS中的apply、call、bind、this
date: 2018-05-21 17:05:18
tags:
  - JavaScript
categories: JavaScript
---
# JS 中的 apply、call、bind、this

## apply 和 call 的区别

apply 和 call 的区别是 call 方法接受的是若干个参数列表，而 apply 接收的是一个包含多个参数的数组。

<!-- more -->

```js
// apply
var a ={
    x : "Hello World",
    func : function (a,b) {
        console.log( a + b)
    }
}
var b = a.func;
b.apply(a,[5, 10])  // 15
```

```js
// call
var a ={
    x : "Hello World",
    func : function (a,b) {
        console.log( a + b)
    }
}
var b = a.func;
b.call(a, 5, 10)  // 15
```

## bind 和 apply、call 的区别

>The bind() method creates a new function that, when called, has its this keyword set to the provided value, with a given sequence of arguments preceding any provided when the new function is called.

```js
// bind
var a ={
    x : "Hello World",
    func : function (a,b) {
        console.log( a + b)
    }
}
var b = a.func;
b.bind(a, 5, 10)()  // 15
```

## function中的this

在Javascript中，this 永远指向最后调用它的那个对象。

## 箭头函数中的this

由于箭头函数不绑定this， 它会捕获其所在（即定义的位置）上下文的this值， 作为自己的this值。

* 所以 call() / apply() / bind() 方法对于箭头函数来说只是传入参数，对它的 this 毫无影响。
* 考虑到 this 是词法层面上的，严格模式中与 this 相关的规则都将被忽略。（可以忽略是否在严格模式下的影响）