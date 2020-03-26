#!/bin/bash -e

#config signalk plugin
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.signalk/plugin-config-data"
install -m 644 -o 1000 -g 1000 files/signalk-to-influxdb.json "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.signalk/plugin-config-data"

install -m 755 -o 0 -g 0 files/rc.local "${ROOTFS_DIR}/etc/"
