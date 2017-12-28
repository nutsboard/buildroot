#!/bin/sh
# post-build.sh for Pistachio SBC
# 2017, Wig Cheng <onlywig@gmail.com>

BOARD_DIR="$(dirname $0)"


# copy the uEnv.txt to the output/images directory
install -m 0644 -D ${BOARD_DIR}/uEnv.txt $BINARIES_DIR/uEnv.txt

# copy the jorjin wg7833 WiFi/Bluetooth firmware
mkdir -p ${TARGET_DIR}/lib/firmware/ti-connectivity/
install -m 0644 -D ${BOARD_DIR}/rootfs-additions/firmware/ti-connectivity/TIInit_11.8.32.bts ${TARGET_DIR}/lib/firmware/ti-connectivity/
install -m 0644 -D ${BOARD_DIR}/rootfs-additions/firmware/ti-connectivity/WL1835MOD_INI_C2PC.ini ${TARGET_DIR}/lib/firmware/ti-connectivity/
install -m 0644 -D ${BOARD_DIR}/rootfs-additions/firmware/ti-connectivity/wl18xx-conf.bin ${TARGET_DIR}/lib/firmware/ti-connectivity/
install -m 0644 -D ${BOARD_DIR}/rootfs-additions/firmware/ti-connectivity/wl18xx-fw-2.bin ${TARGET_DIR}/lib/firmware/ti-connectivity/
install -m 0644 -D ${BOARD_DIR}/rootfs-additions/firmware/ti-connectivity/wl18xx-fw-3.bin ${TARGET_DIR}/lib/firmware/ti-connectivity/
install -m 0644 -D ${BOARD_DIR}/rootfs-additions/firmware/ti-connectivity/wl18xx-fw-4.bin ${TARGET_DIR}/lib/firmware/ti-connectivity/
