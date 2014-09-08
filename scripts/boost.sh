#!/bin/bash

. conf.sh

name=boost
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xjf $distfiles/${name}_*.bz2

cd $name_*
./bootstrap.sh
./b2 install --prefix=$prefix

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
