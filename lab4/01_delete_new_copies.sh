#!/bin/bash

for i in {10..39}
do
	if (($i%2))
	then
		touch $i~
	else
		touch $i
	fi
done

find . -name "*~" -a -mmin -2 -delete
