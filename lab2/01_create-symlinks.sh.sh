#!/bin/sh

echo 'Removing old dir'

rm -rf dir

echo 'Creating dir structure'

mkdir -p dir/a/b/c

mkdir -p dir/d

mkdir -p dir/e

echo 'Creating files'

echo 'test1' > dir/a/b/c/plik1
echo 'test2' > dir/a/b/c/plik2

echo 'testA' > dir/d/plikA
echo 'testB' > dir/d/plikB

echo 'Creating symbolic links'

#sciezki wzgledne
ln -s ../a/b/c/plik1 dir/e/link_plik1
ln -s ../d/plikA dir/e/link_plikA
ln -s ../a dir/e/link_do_a

#sciezki bezwzgledne
ln -s $(pwd)/dir/a/b/c/plik1 dir/e/link_plik1_bez
ln -s $(pwd)/dir/a/b/c/plik2 dir/e/link_plik2_bez
ln -s $(pwd)/dir/d/plikB dir/e/link_plikB_bez
