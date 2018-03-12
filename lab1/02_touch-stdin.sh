#!/bin/sh

while read filename
do
	touch ${1:-.}/$filename
done < $2
