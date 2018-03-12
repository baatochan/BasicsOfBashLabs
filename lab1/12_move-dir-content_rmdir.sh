#!/bin/sh

if [ ! -d "$1" ]
then
	echo "Argument is not a directory!"
	exit 1
fi

for i in $1/*
do
	if [ -d "$i" ]
	then
		`mv $i/* "$1"`
		`rmdir $i`
	fi
done
