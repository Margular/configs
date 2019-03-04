#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/mar/tools/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin/arm-linux-gnueabihf-
export KERNEL=/home/mar/sources/linux-4.19.2

make clean && make
