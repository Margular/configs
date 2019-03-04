#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/mar/tools/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin/arm-linux-gnueabihf- 
export KERNEL=/home/mar/sources/linux-4.19.2
export OLD_CONFIG=/proc/config.gz
export PWD=$(pwd)

gunzip -c ${OLD_CONFIG} > ${KERNEL}/.config

make ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} -C ${KERNEL} oldconfig
make ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} -C ${KERNEL}
