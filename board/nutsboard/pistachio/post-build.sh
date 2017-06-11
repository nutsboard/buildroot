#!/bin/sh
# post-build.sh for Almond SoM
# 2017, Wig Cheng <onlywig@gmail.com>

BOARD_DIR="$(dirname $0)"

# copy the uEnv.txt to the output/images directory
cp board/nutsboard/pistachio/uEnv.txt $BINARIES_DIR/uEnv.txt

GENIMAGE_CFG="${BOARD_DIR}/genimage.cfg"
GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"

# copy the jorjin wg7833 WiFi/Bluetooth firmware
mkdir -p ${TARGET_DIR}/lib/firmware/ti-connectivity/
cp -rv ${BOARD_DIR}/rootfs-additions/firmware/ti-connectivity ${TARGET_DIR}/lib/firmware/

rm -rf "${GENIMAGE_TMP}"

genimage \
  --rootpath "${TARGET_DIR}" \
  --tmppath "${GENIMAGE_TMP}" \
  --inputpath "${BINARIES_DIR}" \
  --outputpath "${BINARIES_DIR}" \
  --config "${GENIMAGE_CFG}"

