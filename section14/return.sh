#!/bin/bash
<<mycom1
#calling a local variable to global value

define_variables()
{
	local x=6
	echo "$x"
}
define_variables	
#since the x is mentioned as local we can't call the x outside function
#echo "$x"
y=$(define_variables)

echo "The value of y is: $y"
mycom1

return_variable()
{
	local x=10
	return $x
}

return_variable
y=$?
#accessing local variable as global variable as y
echo "The value of x is: $y"
