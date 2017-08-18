---
title: Js数组排序
date: 2017-08-18 14:19:14
tags:
  - JavaScript
  - 排序
  - 算法
comments: true
categories: JavaScript
---
### sort()函数排序
```javascript
function systemSort(array){
    return array.sort(function(a, b) {
        return a - b;
    });
}
```
<!-- more -->
***

### 冒泡排序
```javascript
function bubbleeeSort(array){
    for(var i=0;i<array.length;i++){
        for(var j=0;j<array.length;j++){
            if(array[i]>array[j]){
                var d = array[j];
                array[j] = array[i];
                array[i] = d
            }
        }
    }
    return array;
}
```
***

### 快速排序
```javascript
function quickSort(array){
    if(array.length <= 1){return array;}
    
    //找基准，并把基准从原数组删除                    
    var pivotIndex=Math.floor(array.length/2);
    var pivot=array.splice(pivotIndex,1)[0];

    //定义左右数组
    var left=[];
    var right=[];

    //比基准小的放在left，比基准大的放在right
    for(var i=0;i<array.length;i++){
        if(array[i]<=pivot){
            left.push(array[i]);
        }
        else{
            right.push(array[i]);
        }
    }
    //递归
    return quickSort(left).concat([pivot],quickSort(right));
}
```