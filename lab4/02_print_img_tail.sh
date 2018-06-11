#!/bin/sh

mkdir -p t2/a/
mkdir -p t2/b/
mkdir -p t2/c/
mkdir -p t2/d/
mkdir -p t2/e/f/g/h/
mkdir -p t2/j/

touch t2/1.jpg
touch t2/2.gif
touch t2/aaa
touch t2/a/3.jpg
touch t2/a/bbb
touch t2/b/ccc
touch t2/b/ddd
touch t2/c/eee
touch t2/d/fff
touch t2/d/4.gif
touch t2/e/ggg
touch t2/e/hhh
touch t2/e/f/5.jpg
touch t2/e/f/8.gif
touch t2/e/f/iii
touch t2/e/f/g/6.gif
touch t2/e/f/g/h/7.jpg

find `pwd`/t2/ -maxdepth 3 -iname "*.jpg" -print -o -iname "*.gif" -print | tr '/' '\\' | tail -n 5
