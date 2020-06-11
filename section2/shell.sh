#!/bin/bash
#In this script we are taking variables from other file
source one.txt
echo "We Are Working On $name"

c=$(( $x + $y ))

echo "The Result Is: $c"

if [ -f $file ]; then

echo "File Exists"

else

echo"It Is Not"

fi
