---
title: Android平台上的CPU类型
date: 2018-06-22 16:52:24
tags:
  - Android
categories: Android
---
早期的Android系统几乎只支持ARMv5的CPU架构，而现在Android平台支持7种不同的CPU架构，他们分别是ARMv5，ARMv7 (从2010年起)，x86 (从2011年起)，MIPS (从2012年起)，ARMv8，MIPS64和x86_64 (从2014年起)，每一种都关联着一个相应的ABI（Application Binary Interface）。 

<!-- more -->

应用程序二进制接口（Application Binary Interface）定义了二进制文件（尤其是.so文件）如何运行在相应的系统平台上，从使用的指令集，内存对齐到可用的系统函数库。在Android系统上，每一个CPU架构对应一个ABI：armeabi，armeabi-v7a，x86，mips，arm64-v8a，mips64，x86_64。<br>

***

X86系列的

export ANDROID_ABI=x86

===============================

ARM的Cortex-A8 or Cortex-A9系列

export ANDROID_ABI=armeabi-v7a（说明：armeabi-v7a是针对有浮点运算或高级扩展功能的arm cpu）

===============================

ARMv6

export ANDROID_ABI=armeabi(说明：armeabi就是针对普通的或旧的arm cpu)

===============================

ARMv6 不带 FPU

export ANDROID_ABI=armeabi

export NO_FPU=1

===============================

ARMv5 或者 模拟器

export ANDROID_ABI=armeabi 

export NO_ARMV6=1

===============================

MIPS 系列

export ANDROID_ABI=mips

***

* 关于arm（Advanced RISC Machine）架构

是一个32位精简指令集RISC（Reduced Instruction Set Computing）处理器架构，其广泛地使用在许多嵌入式系统设计。但在其他领域上也有很多作为，由于节能的特点，ARM处理器非常适用于移动通信领域，匹配其主要设计目标为低成本、高性能、低耗电的特性。ARM的优势不在于性能强大而在于效率，ARM采用RISC流水线指令集，在完成综合性工作方面根本就处于劣势，而在一些任务相对固定的应用场合其优势就能发挥得淋漓尽致。ARM结构的电脑是通过专用的数据接口使CPU与数据存储设备进行连接，所以ARM的存储、内存等性能扩展难以进行（一般在产品设计时已经定好其内存及数据存储的容量），所以采用ARM结构的系统，一般不考虑扩展。基本奉行“够用就好”的原则。 

* 关于x86架构

是一个复杂指令集CISC（Complex Instruction Set Computer）处理器架构。X86结构的电脑无论如何都比ARM结构的系统在性能方面要快得多、强得多。X86的CPU随便就是1G以上、双核、四核。X86结构的电脑采用“桥”的方式与扩展设备（如：硬盘、内存等）进行连接，而且x86结构的电脑出现了近30年，其配套扩展的设备种类多、价格也比较便宜，所以x86结构的电脑能很容易进行性能扩展，如增加内存、硬盘等。

***

>转自：https://blog.csdn.net/sinat_19385391/article/details/52640460
