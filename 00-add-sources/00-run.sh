#!/bin/bash -e

install -m 644 files/graph.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"

on_chroot apt-key add - < files/grafana.gpg.key
on_chroot apt-key add - < files/influx.gpg.key
on_chroot << EOF
apt-get update
EOF
