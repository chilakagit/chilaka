#!/bin/bash
#This script will tell about the httpd version and port
file=/etc/httpd/conf/httpd.conf
httpd -V | grep -i "server version" | awk -F '/' '{print $2}'
cat $file | grep ^Listen | awk '{print $2}'
