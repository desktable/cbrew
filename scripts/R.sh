#!/bin/bash

. conf.sh

name=R
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xaf $distfiles/$name-*.*

cd $name-*
./configure \
    --prefix=$prefix \
    --with-x=no
make -j60
make install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
