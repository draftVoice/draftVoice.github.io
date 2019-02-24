---
title: Raspberry Pi 显示器设置
date: 2019-02-24 14:57:07
tags:
  - Raspberry Pi
  - Unix/Unix-like
categories: Raspberry Pi
---

修改树莓派根路径下的 config.txt 文件

```
hdmi_force_hotplug=1
config_hdmi_boost=4
hdmi_drive=2
```

<!-- more -->

解释：

hdmi_force_hotplug：强制使用HDMI输出。

config_hdmi_boost：HDMI信号增强。

hdmi_drive：强制音频输出到HDMI口