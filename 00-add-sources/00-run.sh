#!/bin/bash -e


install -m 644 files/graph.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"

if [ ${RELEASE} == "buster" ]
then
  on_chroot apt-key add - < files/grafana.gpg.key
  on_chroot apt-key add - < files/influx.gpg.key
else
  install -m 644 files/influx.gpg "${ROOTFS_DIR}/usr/share/keyrings"
  install -m 644 files/graphana.gpg "${ROOTFS_DIR}/usr/share/keyrings"  
fi

sed -i "s/RELEASE/${RELEASE}/g" "${ROOTFS_DIR}/etc/apt/sources.list.d/graph.list"

apt-get update
EOF
