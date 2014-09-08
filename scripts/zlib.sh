#!/bin/bash

. conf.sh

name=zlib
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xjf $distfiles/$name-*.tar.bz2

cd $name-*
./configure \
    --prefix=$prefix
make -j60
make install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
