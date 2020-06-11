#!/bin/bash
#* means all numbers
clear
read -p "Enter num one: " x
read -p "Enter num two: " y
#read -p "Enter the choice 1.addition 2.subtraction 3.multiplication 4.division: " option
echo "=========================menu for arithmetic operations=============="
echo "1.ADDITION"
echo "2.SUBTRACTION"
echo "3.MULTIPLICATION"
echo "4.DIVISION"
read -p "Please select your option from above menu: " option
case $option in
	1)
		echo "You selectd addition"
		echo "The sum of two entered numbers is: $(( $x + $y ))"
		;;
	2)
		echo "You Selected subtraction"
		echo "The sub of two entered numbers is: $(( $x - $y ))"
		;;
	3)
		echo "You selected multiplication"
		echo "The multiplication of entered numbers is: $(( $x * $y ))"
		;;
	4)
		echo "You selected division"
		echo "The division of entered numbers is: $(bc<<<"scale=2;$x/$y")"
		;;
	*)	echo "You have selected invalid option"
		;;
esac
