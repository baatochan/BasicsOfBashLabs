#!/bin/sh

echo 'Removing old dir'

rm -rf task1example

echo 'Creating dir structure'

mkdir -p task1example/a/b/c

mkdir -p task1example/d

mkdir -p task1example/e

echo 'Creating files'

echo 'test1' > task1example/a/b/c/plik1
echo 'test2' > task1example/a/b/c/plik2

echo 'testA' > task1example/d/plikA
echo 'testB' > task1example/d/plikB

echo 'Creating symbolic links'

#sciezki wzgledne
ln -s ../a/b/c/plik1 task1example/e/link_plik1
ln -s ../d/plikA task1example/e/link_plikA
ln -s ../a task1example/e/link_do_a

#sciezki bezwzgledne
ln -s $(pwd)/task1example/a/b/c/plik1 task1example/e/link_plik1_bez
ln -s $(pwd)/task1example/a/b/c/plik2 task1example/e/link_plik2_bez
ln -s $(pwd)/task1example/d/plikB task1example/e/link_plikB_bez
