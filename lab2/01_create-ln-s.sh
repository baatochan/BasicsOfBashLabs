#!/bin/sh

echo 'Creating dir structure'

rm -rf dir
mkdir dir
mkdir dir/a
mkdir dir/a/b
mkdir dir/a/b/c

mkdir dir/d

mkdir dir/e

echo 'Creating files'

echo 'test1' > dir/a/b/c/plik1
echo 'test2' > dir/a/b/c/plik2

echo 'testA' > dir/d/plikA
echo 'testB' > dir/d/plikB
