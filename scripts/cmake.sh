#!/bin/bash

. conf.sh

name=cmake
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xaf $distfiles/$name-*.tar.*

cd $name-*
./configure \
    --prefix=$prefix
make -j60
make install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
