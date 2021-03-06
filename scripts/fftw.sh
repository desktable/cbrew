#!/bin/bash

. conf.sh

name=fftw
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xzf $distfiles/$name-*.tar.gz

cd $name-*
./configure \
    --prefix=$prefix
make -j60
make install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
