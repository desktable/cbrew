#!/bin/bash

. conf.sh

name="false"
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xaf $distfiles/$name-*.*

cd $name-*
gcc -o sfc -O2 -DNDEBUG false-read-only/fixpoint/*.c
mkdir -p $prefix/bin
cp sfc $prefix/bin

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
