#!/bin/bash

# vim: set expandtab:

. conf.sh

name=chicken
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xaf $distfiles/$name-*.*

cd $name-*
make PLATFORM=linux PREFIX=$prefix
make PLATFORM=linux PREFIX=$prefix install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
