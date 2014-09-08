#!/bin/bash

. conf.sh

name=TeXmacs
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xaf $distfiles/$name-*.gz

rm -rf $prefix/$name-* 
mv $name-* $prefix

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
