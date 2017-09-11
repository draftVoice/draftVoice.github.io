---
title: Js中Number()、parseInt()和parseFloat()的区别
date: 2017-09-11 10:25:40
tags:
  - JavaScript
categories: JavaScript
---
## Number()

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

## parseInt()
>parseInt() 函数可解析一个字符串，并返回一个整数。

```javascript
parseInt("10");         //10
parseInt("10.33");      //10
parseInt("34 45 66");   //34
parseInt(" 60 ");       //60
parseInt("40 years");   //40
parseInt("He was 40");  //NaN

parseInt("10",10);      //10
parseInt("010");        //10
parseInt("10",8);       //8
parseInt("0x10");       //16
parseInt("10",16);      //16
```

* 处理整数的时候parseInt()更常用。parseInt()函数在转换字符串时，会忽略字符串前面的空格，知道找到第一个非空格字符。
* 如果第一个字符不是数字或者负号，parseInt() 就会返回NaN，同样的，用parseInt() 转换空字符串也会返回NaN。
* 如果第一个字符是数字字符，parseInt() 会继续解析第二个字符，直到解析完所有后续字符串或者遇到了一个非数字字符。

parseInt()方法还有基模式，可以把二进制、八进制、十六进制或其他任何进制的字符串转换成整数。

基是由parseInt()方法的第二个参数指定的，所以要解析十六进制的值，当然，对二进制、八进制，甚至十进制（默认模式），都可以这样调用parseInt()方法。

## parseFloat()

>parseFloat() 函数可解析一个字符串，并返回一个浮点数。

>该函数指定字符串中的首个字符是否是数字。如果是，则对字符串进行解析，直到到达数字的末端为止，然后以数字返回该数字，而不是作为字符串。

```javascript
parseFloat("10");         //10
parseFloat("10.00");      //10
parseFloat("10.33");      //10.33
parseFloat("34 45 66");   //34
parseFloat(" 60 ");       //60
parseFloat("40 years");   //40
parseFloat("He was 40");  //NaN
```

* 与parseInt() 函数类似，parseFloat() 也是从第一个字符（位置0）开始解析每一个字符。也是一直解析到字符串末尾，或者解析到遇见一个无效的浮点数字字符为止。
* 也就是说，字符串中第一个小数点是有效的，而第二个小数点就是无效的了，它后面的字符串将被忽略。
* parseFloat() 只解析十进制，因此它没有第二个参数指定基数的用法
* 如果字符串中包含的是一个可解析为正数的数（没有小数点，或者小数点后都是零），parseFloat() 会返回整数。

***

>原文链接：http://www.cnblogs.com/yi0921/p/6196841.html