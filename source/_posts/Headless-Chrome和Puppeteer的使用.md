---
title: Headless Chrome和Puppeteer的使用.md
date: 2017-10-18 15:13:12
tags:
  - node
  - spider
  - chrome
  - puppeteer
  - npm
categories: spider
---
# Headless Chrome

Chrome 59 之后提供了 Headless 模式，其允许在命令行中使用 Chromium 以及 Blink 渲染引擎提供的完整的现代 Web 平台特性。

为chrome可执行文件创建别名：

```bash
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
```

<!-- more -->

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

## Headless Chrome Node API

### Install Puppeteer

[Puppeteer](https://github.com/GoogleChrome/puppeteer) is a Node library which provides a high-level API to control headless Chrome or Chromium over the DevTools Protocol. It can also be configured to use full (non-headless) Chrome or Chromium.

```bash
npm i --save puppeteer
```

下载完puppeteer包之后有执行node install.js去下载chromium，但是由于网络的原因，国内安装puppeteer时可能会报如下错误：

```bash
ERROR: Failed to download Chromium r536395! Set "PUPPETEER_SKIP_CHROMIUM_DOWNLOAD" env variable to skip download.
```

可以使用淘宝的[cnpm](https://npm.taobao.org/)安装：

```bash
npm install -g cnpm --registry=https://registry.npm.taobao.org
cnpm i puppeteer --save
```