#!/bin/bash
x=1456
y=${#x}
echo "The value of x is: $x"
echo "The value of x is: ${#x}"
echo "The value of y is: $y"
path1="/etc/httpd/conf"
path2="/httpd.conf"

#echo `cat ${path1}${path2}`
name="shell"
echo "The uppercase info is: ${name^^}"

echo "The lowercase info is: ${name,,}"

httpd_conf_path="/etc/httpd/conf/httpd.conf"
httpd_conf_home=$(dirname $httpd_conf_path)
httpd_conf_file=$(basename $httpd_conf_path)
httpd_conf_file_without_suffix=$(basename $httpd_conf_path .conf)
echo "The path for dirname is: $httpd_conf_home"
echo "The path for basename is: $httpd_conf_file"
echo "To strip the suffix with basename: $httpd_conf_file_without_suffix"
