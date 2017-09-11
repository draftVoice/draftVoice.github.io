---
title: Js中Number()、parseInt()和parseFloat()的区别
date: 2017-09-11 10:25:40
tags:
  - JavaScript
categories: JavaScript
---
## 一、Number()

>Number() 函数把对象的值转换为数字。
<!-- more -->
```javascript
Number("Hello world");　　　　　　//NaN
Number("");　　　　　　　　　　　　 //0
Number("0000011");　　　　　　　  //11
Number(true);                   //1
Number(false);                  //0
Number("666");                  //666
Number("666 666")               //NaN
```
* 如果是Boolean值，true和false值将分别被转换为1和0。
* 如果是数字值，只是简单的传入和返回。
* 如果是undefined，返回NaN。
* 如果是null值，返回0。
* 如果是字符串：
  1. 如果字符串中只包含数字时，将其转换为十进制数值，忽略前导0
  2. 如果字符串中包含有效浮点格式，如“1.1”，将其转换为对应的浮点数字，忽略前导0
  3. 如果字符串中包含有效的十六进制格式，如“0xf”，将其转换为相同大小的十进制数值
  4. 如果字符串为空，将其转换为0
  5. 如果字符串中包含除上述格式之外的字符，则将其转换为NaN
* 如果是对象，则调用对象的valueOf（）方法，然后依照前面的规则转换返回的值。如果转换的结果是NaN，则调用对象的toString（）方法，然后再依照前面的规则转换返回的字符串值。

## 二、parseInt()
>parseInt() 函数可解析一个字符串，并返回一个整数。
