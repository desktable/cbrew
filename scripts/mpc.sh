#!/bin/bash

. conf.sh

name=mpc
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xzf $distfiles/$name-*.gz

cd $name-*
./configure \
    --prefix=$prefix \
    --with-gmp=$prefix
make -j60
make install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
