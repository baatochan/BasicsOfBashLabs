#!/bin/sh

if [ ! -x 01_create-symlinks.sh ]
then
	echo "Required dependency not found: 01_create-symlinks.sh"
	echo "Make sure 01_create-symlinks.sh exists and is executable"
    exit 1
fi

echo 'Running task1 file:'

./01_create-symlinks.sh

echo '\nLooking for symlinks to file1 in e dir:'

abspath_plik1="$(realpath -s task1example/a/b/c/plik1)"

for file in task1example/e/*
do
	if [ "$(readlink -f $file)" = "$abspath_plik1" ]
	then
		echo '    '$file
	fi
done


echo 'Printing canonical path of these symlinks:'

for file in task1example/e/*
do
	if [ "$(readlink -f $file)" = "$abspath_plik1" ]
	then
		echo '    '$(realpath -s "$file")
	fi
done

echo 'Creating f dir'

mkdir -p task1example/f

echo 'Copying link_plikB_bez link'

cp -a task1example/e/link_plikB_bez task1example/f/link_plikB_bez

echo 'Copying link_plikA target file'

cp task1example/e/link_plikA task1example/f/plikA
