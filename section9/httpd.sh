#!/bin/bash
#Author:Naveen
#To find the httpd script
<<mycom1
if which httpd &> /dev/null
then
	systemctl start httpd
	systemctl status httpd
fi
mycom1
<<mycom2
which httpd &> /dev/null
httpd_status=$?
if [[ httpd_status -eq 0 ]]
then
	echo "Httpd is installed"
	systemctl status httpd
fi
mycom2

<<mycom3
which httpd &> /dev/null && echo "Httpd installed" || echo "Logical or execution"
mycom3

if which httpd &> /dev/null
then
 	echo "Httpd installed"
	httpd_ver=$(httpd -v | awk -F '[ / ]' '/version/ {print $4}')
	echo "The Httpd version is: $httpd_ver"
else
	echo "Httpd Is Not Installed"
fi






































