#!/bin/sh

qemu-system-arm \
    -M vexpress-a15 \
    -m 1G \
    -kernel zImage \
    -nographic \
    -append "root=/dev/mmcblk0 rw console=ttyAMA0" \
    -sd a15rootfs.ext4 \
    -dtb dts/vexpress-v2p-ca15-tc1.dtb \
    -net nic \
    -net tap,ifname=tap0,script=no,downscript=no
