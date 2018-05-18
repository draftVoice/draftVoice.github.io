---
title: Python's SimpleHTTPServer Module
date: 2018-05-18 19:01:15
tags:
  - Python
categories: Python
---
Python’s SimpleHTTPServer is a simple http server with Python.

```bash
python -m SimpleHTTPServer
```

<!-- more -->

Now the http server will start in port 8000.

If the directory has a file named index.html, that file will be served as the initial file. If there is no index.html, then the files in the directory will be listed.

If you wish to change the port that's used start the program via:

```bash
python -m SimpleHTTPServer <port>
```

***

>The SimpleHTTPServer module has been merged into http.server in Python 3.0. The 2to3 tool will automatically adapt imports when converting your sources to 3.0.

The command in python3 is:

```bash
python3 -m http.server <port>
```
