---
title: FFmpeg 常用命令
date: 2018-08-13 20:12:18
tags:
  - FFmpeg
categories: FFmpeg
---

## 保存hls(m3u8)/rtmp的视频/直播流

```bash
ffmpeg -i 'rtmp://example.com/xxx' -c copy -f mp4 output.mp4
```

<!-- more -->