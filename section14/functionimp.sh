#!/bin/bash
#execution starts from x=5 y=225 and then addition function
<<mycom1
addition()
{
	result=$(( $x + $y ))
	echo "The addition of two numbers: $result"
}

x=225
y=225

addition
mycom1
# In the script we should get output as 450 and 48 but iam getting 450 and 450,so to avoid this follow below to below script
<<mycom2
addition()
{
        result=$(( $x + $y ))
        echo "The addition of two numbers: $result"
}
x=225
y=225
addition
p=23
q=25
addition
mycom2

#it is like same concept of command line arguments
#like ./function.sh 1 2 
addition()
{
	echo "The name of ShellScript is: $0"
	m=$1
	n=$2
        result=$(( $m + $n ))
        echo "The addition of two $m and $n numbers: $result"
}
x=225
y=225
addition $x $y
p=23
q=25
addition $p $q

addition 1400 2400
