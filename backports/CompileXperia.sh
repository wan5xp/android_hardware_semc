#!/bin/bash

# Wi-Fi drivers
# Reference: https://backports.wiki.kernel.org/index.php/Main_Page

CM_ROOT=`echo ${PWD%/*/*/*}`
DEVICE="lotus"

make \
ARCH=arm CROSS_COMPILE=$CM_ROOT/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- \
KERNEL_DIR=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ \
KLIB_BUILD=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ \
KLIB=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ \
clean

make \
ARCH=arm CROSS_COMPILE=$CM_ROOT/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- \
KERNEL_DIR=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ \
KLIB_BUILD=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ \
KLIB=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ \
mrproper

make \
ARCH=arm CROSS_COMPILE=$CM_ROOT/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- \
KERNEL_DIR=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ \
KLIB_BUILD=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ \
KLIB=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ \
defconfig-xperia

make \
ARCH=arm CROSS_COMPILE=$CM_ROOT/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- \
KERNEL_DIR=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ \
KLIB_BUILD=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ \
KLIB=$CM_ROOT/out/target/product/$DEVICE/obj/KERNEL_OBJ

rm -rf bins 2> /dev/null
mkdir bins
find . -name *.ko -exec cp {} ./bins \; 2> /dev/null
