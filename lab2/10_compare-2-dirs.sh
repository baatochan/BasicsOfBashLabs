#!/bin/sh

if [ ! -d "$1" ]
then
	echo "First argument is not a directory!"
	if [ ! -d "$2" ]
	then
		echo "Second argument is not a directory!"
		exit 1
	fi
	exit 1
fi
if [ ! -d "$2" ]
then
	echo "Second argument is not a directory!"
	exit 1
fi

for i in `ls $1`
do
	if [ -f "$2/$i" ]
	then
		echo $i
	fi
done
