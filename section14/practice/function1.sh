#!/bin/bash
variables()
{
	read -p "Enter the value of first number: " a
	read -p "Enter the value of second number: " b
}

addition()
{
	sum=$(( $a + $b ))
	echo "The sum of $a and $b is: $sum" 
}

subtraction()
{
	sum=$(( $a - $b ))
	echo "The sum of $a and $b is: $sum"
}

multiplication()
{
	mul=$(( $a * $b ))
	echo "The multiplication of $a and $b is: $mul"
}
division()
{
	div=$(( $a/$b ))
	echo "The division of $a and $b is: $div"
}

variables
addition
subtraction
multiplication
division
