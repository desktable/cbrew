#!/bin/bash

. conf.sh

name=ncurses
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xzf $distfiles/ncurses-*.tar.gz

cd $name-*
./configure \
    --with-shared \
    --prefix=$prefix
make -j60
make install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
