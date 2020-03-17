#!/bin/bash -e

sed -i 's/http_port = 3000/http_port = 3001/g' /usr/share/grafana/conf/defaults.ini
sed -i 's/;http_port = 3000/http_port = 3001/g' /etc/grafana/grafana.ini

systemctl unmask influxdb.service
systemctl enable influxdb.service
systemctl enable kapacitor.service
systemctl enable systemctl enable 

