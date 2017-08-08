#!/bin/bash

hexo generate && hexo deploy && git checkout source && git pull origin source && git add . && git commit -m "update" && git push origin source
