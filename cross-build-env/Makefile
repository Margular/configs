PWD := $(shell pwd)
obj-m += hello.o

all:
	make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS) -C $(KERNEL) M=$(PWD) modules
clean:
	make -C $(KERNEL) M=$(PWD) clean
