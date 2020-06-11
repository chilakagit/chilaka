#!/bin/bash
read_inputs()
{
	read -p "Enter the First Number: " num1
	read -p "Enter the Second Number: " num2
}

addition()
{
	sum=$(( $num1 + $num2 ))
	echo "The Result is: $sum"
}
subtraction()
{
	sub=$(( $num1 - $num2 ))
	echo "The Result is: $sub"
}

read_inputs
subtraction
addition
