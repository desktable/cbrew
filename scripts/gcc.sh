#!/bin/bash

. conf.sh

name=gcc
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xjf $distfiles/$name-*.bz2

cd $name-*
./configure \
    --prefix=$prefix \
    --with-gmp=$prefix \
    --with-mpfr --with-mpc \
    --disable-multilib
make -j60
make install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
