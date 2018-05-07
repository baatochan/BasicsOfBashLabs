#!/bin/bash

for i in {0..9}
do
	if (($i%2))
	then
		touch $i~
	else
		touch $i
	fi
done
