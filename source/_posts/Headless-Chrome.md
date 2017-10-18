---
title: Headless Chrome
date: 2017-10-18 15:13:12
tags:
  - node
  - spider
  - chrome
categories: spider
---

Chrome 59 之后提供了 Headless 模式，其允许在命令行中使用 Chromium 以及 Blink 渲染引擎提供的完整的现代 Web 平台特性。

为chrome可执行文件创建别名：

```bash
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
```

```bash
#打印DOM:
chrome --headless --disable-gpu --dump-dom http://www.xiaoqiangli.com

#输出为PDF：
chrome --headless --disable-gpu --print-to-pdf http://www.xiaoqiangli.com

#获取页面截图:
chrome --headless --disable-gpu --screenshot http://www.xiaoqiangli.com

# Size of a standard letterhead.
chrome --headless --disable-gpu --screenshot --window-size=1280,1696 http://www.xiaoqiangli.com

# Nexus 5x
chrome --headless --disable-gpu --screenshot --window-size=412,732 http://www.xiaoqiangli.com
```