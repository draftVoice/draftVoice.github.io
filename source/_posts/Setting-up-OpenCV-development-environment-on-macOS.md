---
title: Setting up OpenCV development environment on macOS
date: 2018-11-01 18:08:32
tags:
  - macOS
  - Python
  - C++
  - OpenCV
categories: OpenCV
---
# Setting up OpenCV development environment on macOS

## C++ OpenCV development environment

### 1.Install OpenCV

To install OpenCV using brew, open a terminal and paste:

```bash
brew install opencv
```

<!-- more -->

### 2.Install pkg-config

pkg-config is a helper tool used when compiling applications and libraries. It helps you insert the correct compiler options on the command line rather than hard-coding values. This will be helpful for finding the correct linker flags for OpenCV. This will be more clear in the subsequent steps.

To install pkg-config using brew, open a terminal and paste:

```bash
brew install pkg-config
```

### 3.View OpenCV linker flags

To view the linker flags for OpenCV, run:

```bash
pkg-config --cflags --libs opencv
```

In case the command to get linker flags doesn’t work, you might need to specify the location of opencv.pc file:

```bash
pkg-config --cflags --libs path/to/opencv.pc
```

My opencv.pc file is located at

```bash
/usr/local/Cellar/opencv/<version_number>/lib/pkgconfig/opencv.pc
```

### 4. Running your code on the terminal

Paste the below line which compiles the OpenCV code with the appropriate linker flags.

```bash
g++ $(pkg-config --cflags --libs opencv) -std=c++11  yourFile.cpp -o yourFileProgram
```

Run the binary

```bash
./yourFileProgram
```

***

## Python OpenCV development environment

### 1.Install OpenCV as a python module

```bash
pip3 install opencv-python
```

### 2.Import the OpenCV module in python

```py
import cv2
```

***

References

[Setting up OpenCV and C++ development environment in Xcode for Computer Vision projects](https://medium.com/@jaskaranvirdi/setting-up-opencv-and-c-development-environment-in-xcode-b6027728003)

[opencv-python](https://pypi.org/project/opencv-python/)