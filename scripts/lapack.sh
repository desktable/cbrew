#!/bin/bash

. conf.sh

name=lapack
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xaf $distfiles/$name.*

cp $name/* $prefix/lib

cd $wd

echo "!!!! $name build !!!!"

rm -rf $temp_dir
