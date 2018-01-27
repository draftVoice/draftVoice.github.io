---
title: Embed tags in JavaScript comment blocks
date: 2018-01-27 12:11:50
tags:
  - JavaScript
comments: true
categories: JavaScript
---

The tag will be embedded in comment blocks that start with /*\* and end with */

<!-- more -->

## Block Tags

| Name | Description |
| :- | :- |
| @module | 标明当前文件模块，在这个文件中的所有成员将被默认为属于此模块，除非另外标明 |
| @submodule | 针对模块的划分，处于@module之下 |
| @class | 标示一个类或者一个函数 |
| @constructor | 当使用对象字面量形式定义类时，可使用此标签标明其构造函数 |
| @callback | 标明此方法是一个回调函数 |
| @event | 标明一个可触发的事件函数，一个典型的事件是由对象定义的一组属性来表示。 |
| @constant | 常量标识 |
| @member/@var | 记录一个基本数据类型的成员变量  |
| @method | 标记一个方法或函数 |
| @param | 标记方法参数及参数类型 |
| @property | 标明一个对象的属性 |
| @readonly | 只读 |
| @return | 标明返回值、类型及描述 |
| @type | 描述代码变量的类型 |
| @description | 如果在注释开始描述可省略此标签 |
| @enum | 一个类中属性的类型相同时，使用此标签标明 |
| @example | 示例，代码可自动高亮 |
| @exports | 标识此对象将会被导出到外部调用 |
| @ignore | 忽略此注释块 |
| @name | 指定一段代码的名称，强制 JSDoc 使用此名称，而不是代码里的名称 |
| @namespace | 指定一个变量为命名空间变量 |
| @static | 描述一个不需实例即可使用的变量 |
| @summary | 对描述信息的短的概述 |
| @throws | 描述方法将会出现的错误和异常 |
| @todo | Document tasks to be completed. |
| @tutorial | Insert a link to an included tutorial file.|
| @version | Documents the version number of an item. |

## Inline Tags

| Name | Description |
| :- | :- |
| {@link} | Link to another item in the documentation |
| {@tutorial} | Link to a tutorial. |