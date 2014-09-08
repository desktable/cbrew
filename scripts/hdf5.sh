#!/bin/bash

. conf.sh

name=hdf5
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xaf $distfiles/$name-*.tar.bz2

cd $name-*
./configure \
    --prefix=$prefix \
    --enable-cxx
make -j60
make install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
