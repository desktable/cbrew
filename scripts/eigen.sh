#!/bin/bash

. conf.sh

name=eigen
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xaf $distfiles/$name-*.tar.*

cd $name-*
rsrc_dir=$PWD

mkdir -p $build_dir
cd $build_dir
cmake $rsrc_dir -DCMAKE_INSTALL_PREFIX=$prefix
make install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
