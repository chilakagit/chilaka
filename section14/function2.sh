#!/bin/bash
#Here x and y are global variables
x=5
display()
{
	echo "This is my first fucntionscript"
	echo "The value of X is: $x"
	echo "The value of Y is: $y"
	x=67
	local p=98
	echo "The valiue of p in function: $p"
}
y=5
#calling function display
display
echo "the value of x after calling display function: $x"
echo "The value of p outside of the function: $p"
