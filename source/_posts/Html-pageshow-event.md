---
title: Html pageshow event
date: 2018-02-12 13:14:24
tags:
  - Html
categories: Html
---
[MDN docs](https://developer.mozilla.org/en-US/docs/Web/Events/pageshow)
>The pageshow event is fired when a session history entry is being traversed to. (This includes back/forward as well as initial page-showing after the onload event.)
>
>The following will log info about the pageshow event, which is fired on back/forward, not just after onload:

<!-- more -->

```js
window.addEventListener('pageshow', function(event) {
    // console.log(event);

    /**
     * 配合location.reload()方法可以实现移动端web返回历史记录时强制页面刷新
     * event.persisted属性为true时，表示当前文档是从往返缓存中获取
     */
    if(event.persisted){
        window.location.reload();
    }
});
```