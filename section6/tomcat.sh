#!/bin/bash

req_tom_ver="9.0.34"
tomcat_major_version=$(echo ${req_tom_ver} | cut -c 1)
url=http://us.mirrors.quenda.co/apache/tomcat/tomcat-${tomcat_major_version}/v${req_tom_ver}/bin/apache-tomcat-${req_tom_ver}.tar.gz
wget $url
tar -xzvf apache-tomcat-${req_tom_ver}.tar.gz
mv apache-tomcat-${req_tom_ver} tomcat${tomcat_major_version}
rm -rf apache-tomcat-${req_tom_ver}.tar.gz


