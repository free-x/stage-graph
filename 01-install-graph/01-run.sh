#!/bin/bash -e

on_chroot << EOF
cd /home/${FIRST_USER_NAME}/.signalk
npm i --verbose signalk-to-influxdb
chown -R ${FIRST_USER_NAME} /home/${FIRST_USER_NAME}/.signalk
EOF
