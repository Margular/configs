#!/bin/bash

export BUSYBOX_INSTALL=~/sources/busybox-1.29.3/_install
export CROSS_DIR=~/tools/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf

sudo mkdir rootfs
sudo cp -arf ${BUSYBOX_INSTALL}/* rootfs/

sudo mkdir -p rootfs/proc/
sudo mkdir -p rootfs/sys/
sudo mkdir -p rootfs/tmp/
sudo mkdir -p rootfs/root/
sudo mkdir -p rootfs/var/
sudo mkdir -p rootfs/mnt/
sudo mkdir -p rootfs/etc/init.d/

cat >TMP <<EOF
#!/bin/sh

mount -t proc none /proc
mount -t sysfs none /sys
/sbin/mdev -s

ifconfig eth0 down
brctl addbr br0
brctl addif br0 eth0
ifconfig br0 promisc up
ifconfig eth0 promisc up
dhclient br0
tunctl -t tap0 -u root
brctl addif br0 tap0
ifconfig tap0 up
EOF

sudo chmod +x TMP
sudo mv TMP rootfs/etc/init.d/rcS

sudo cp -arf ${CROSS_DIR}/{lib,lib64} rootfs/
sudo rm rootfs/{lib,lib64}/*.a
sudo ${CROSS_DIR}/bin/arm-linux-gnueabi*-strip rootfs/{lib,lib64}/*

sudo mkdir -p rootfs/dev/
sudo mknod rootfs/dev/tty1 c 4 1
sudo mknod rootfs/dev/tty2 c 4 2
sudo mknod rootfs/dev/tty3 c 4 3
sudo mknod rootfs/dev/tty4 c 4 4
sudo mknod rootfs/dev/console c 5 1
sudo mknod rootfs/dev/null c 1 3

sudo dd if=/dev/zero of=a15rootfs.ext4 bs=1M count=1024
sudo mkfs.ext4 a15rootfs.ext4

sudo mkdir tmpfs
sudo mount -t ext4 a15rootfs.ext4 ./tmpfs -o loop
sudo cp -r rootfs/* tmpfs/
sudo umount ./tmpfs
sudo rmdir ./tmpfs
sudo rm -rf rootfs
