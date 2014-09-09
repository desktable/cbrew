#!/bin/bash

. conf.sh

name=perl
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xzf $distfiles/$name-*.gz

cd $name-*
./Configure -des -Dprefix=$prefix
make
make test
make install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
