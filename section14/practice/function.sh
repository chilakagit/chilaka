#!/bin/bash
mycode()
{
	read -p "Enter the first value: " a
	read -p "Enter the second value: " b

}
echo -e "This script is on functions"
echo -e "In this script we are working with case statement"
read -p "Enter your choice: " choice
case $choice in
		[aA])
			#read -p "Enter the First value: " a
			#read -p "Enter the second value: " b
			mycode
			sum=$(( $a + $b ))
			echo "The sum of $a and $b is: $sum"
esac
