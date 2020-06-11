#!/bin/bash
#Author: Naveen
#Installing multiple packages

if [[ $(id -u) -ne 0 ]]
then
	echo "please run with root user"
	exit 1
fi
for i in vim httpd vsftpd
do
 if which $i &> /dev/null
 then
	 echo "Package already installed"
 else
         echo "installing Package......."
         yum install $i -y &> /dev/null
         if [[ $? -eq 0 ]]
	         then
 	             echo "Package installed correctly"
 		 else
 	             echo "Not installed package"
	 fi
 fi
	
done




















<<mycom1
if [[ `which tree` == 0 ]]
then
	echo "Package already installed"
else
	echo "installing Package......."
	yum install vim -y &> /dev/null
	if [[ $? -eq 0 ]]
	then
		echo "Package installed correctly"
	else
		echo "Not installed package"
	fi
fi
mycom1


