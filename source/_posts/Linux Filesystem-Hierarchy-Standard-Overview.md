---
title: Linux Filesystem Hierarchy Standard Overview
date: 2018-03-17 11:19:53
tags:
  - Unix/Unix-like
comments: true
categories: Unix/Unix-like
---
# Linux [Filesystem Hierarchy Standard](http://www.linuxbase.org/betaspecs/fhs/fhs/index.html) Overview

## The Root Filesystem

<!-- more -->

* /bin : Essential user command binaries (for use by all users)
* /boot : Static files of the boot loader
* /dev : Device files
* /etc : Host-specific system configuration
  * /etc/opt : Configuration files for /opt
  * /etc/X11 : Configuration for the X Window System (optional)
  * /etc/sgml : Configuration files for SGML (optional)
  * /etc/xml : Configuration files for XML (optional)
* /home : User home directories (optional)
* /lib : Essential shared libraries and kernel modules
* /lib\<qual> : Alternate format essential shared libraries (optional)
* /media : Mount point for removable media
* /mnt : Mount point for a temporarily mounted filesystem
* /opt : Add-on application software packages
* /root : Home directory for the root user (optional)
* /run : Run-time variable data
* /sbin : System binaries
* /srv : Data for services provided by this system
* /tmp : Temporary files

## The /usr Hierarchy

>Secondary hierarchy for read-only user data; contains the majority of (multi-)user utilities and applications.

* /usr/bin : Most user commands
* /usr/include : Directory for standard include files.
* /usr/lib : Libraries for programming and packages
* /usr/libexec : Binaries run by other programs (optional)
* /usr/lib\<qual> : Alternate format libraries (optional)
* /usr/local : Local hierarchy
  * /usr/local/share : Local architecture-independent hierarchy
* /usr/sbin : Non-essential standard system binaries
* /usr/share : Architecture-independent data
  * /usr/share/color : Color management information (optional)
  * /usr/share/dict : Word lists (optional)
  * /usr/share/man : Manual pages
  * /usr/share/misc : Miscellaneous architecture-independent data
  * /usr/share/ppd : Printer definitions (optional)
  * /usr/share/sgml : SGML data (optional)
  * /usr/share/xml : XML data (optional)
* /usr/src : Source code (optional)

## The /var Hierarchy

>Variable files—files whose content is expected to continually change during normal operation of the system—such as logs, spool files, and temporary e-mail files.

* /var/account : Process accounting logs (optional)
* /var/cache : Application cache data
  * /var/cache/fonts : Locally-generated fonts (optional)
  * /var/cache/man : Locally-formatted manual pages (optional)
* /var/crash : System crash dumps (optional)
* /var/games : Variable game data (optional)
* /var/lib : Variable state information
  * /var/lib/\<editor> : Editor backup files and state (optional)
  * /var/lib/color : Color management information (optional)
  * /var/lib/hwclock : State directory for hwclock (optional)
  * /var/lib/misc : Miscellaneous variable data
* /var/lock : Lock files
* /var/log : Log files and directories
* /var/mail : User mailbox files (optional)
* /var/opt : Variable data for /opt
* /var/run : Run-time variable data
* /var/spool : Application spool data
  * /var/spool/lpd : Line-printer daemon print queues (optional)
  * /var/spool/rwho : Rwhod files (optional)
* /var/tmp : Temporary files preserved between system reboots
* /var/yp : Network Information Service (NIS) database files (optional)
