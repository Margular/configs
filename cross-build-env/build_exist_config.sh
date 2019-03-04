#!/bin/bash

export ARCH=arm
export CONFIG=vexpress_defconfig
export CROSS_COMPILE=/home/mar/tools/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin/arm-linux-gnueabihf- 
export KERNEL=/home/mar/sources/linux-4.19.2
export MAKEFLAGS='-j32'

make ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} -C ${KERNEL} ${CONFIG}
make ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} -C ${KERNEL} menuconfig
make ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} -C ${KERNEL}
