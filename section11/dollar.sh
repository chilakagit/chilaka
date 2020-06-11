#!/bin/bash
<<mycom1
echo "$@"
echo "$*"
mycom1

echo "The below ouput is for: \$*"
for i in "$*"
do
  echo $i
done

echo "The below output is for: \$@"

for i in "$@"
do
	echo $i
done

