---
title: Primary Commands for tmux
date: 2018-11-02 14:33:28
tags:
  - terminal
  - tmux
categories: tmux
---
Start new named session:

```bash
tmux new -s [session name]
```

<!-- more -->

Detach from session:

```bash
ctrl+b d
```

List sessions:

```bash
tmux ls
```

Attach to named session:

```bash
tmux a -t [name of session]
```

Kill named session:

```bash
tmux kill-session -t [name of session]
```

Split panes horizontally:

```bash
ctrl+b "
```

Split panes vertically:

```bash
ctrl+b %
```

Kill current pane:

```bash
ctrl+b x
```

Move to another pane:

```bash
ctrl+b [arrow key]
```

Kill tmux server, along with all sessions:

```bash
tmux kill-server
```