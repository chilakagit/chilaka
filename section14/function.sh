#!/bin/bash
mycode()
{
	read -p "Enter Your First Number: " a
	read -p "Enter your second Number: " b
}
echo "-------------------------"
echo "welcome to arithmetic operatios"
echo -e "a)ADDITION\nb)SUBTRACTION\nc)MULTIPLICATION\nd)division"
read -p "Enter Your choice: " choice
case $choice in
	[aA])
#		read -p "Enter First Number: " a
#		read -p "Enter Second number: " b
		mycode
		c=$(( $a + $b ))
		echo "The Result is: $c"
esac

