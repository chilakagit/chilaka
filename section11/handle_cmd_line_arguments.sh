#!/bin/bash
<< mycm1
for i in $@
do

	echo $i
done
mycm1
if [[ $# -eq 0 ]]
then
	echo "please pass the arguments like: $0 pkg1 pkg2"
        exit 1
fi

if [[ $(id -u) -ne 0 ]]
then
        echo "please run with root user"
        exit 1
fi
for i in $@
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

