#!/bin/bash
x=5
display()
{
	echo "The value of x is: $x"
	echo "The value of y is: $y"
	x=25
	local p=22
	echo "The value of x is: $x"
	echo "The value of p is: $p"
}
y=27
display
echo "The value of x is: $x"
echo "The value of p is: $p"
