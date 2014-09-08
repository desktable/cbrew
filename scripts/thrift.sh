#!/bin/bash

. conf.sh

name=thrift

echo "!!!! build $name !!!!"

rm -rf $src_dir || true
mkdir -p $src_dir || true
cd $src_dir
tar xaf $distfiles/$name-*

cd $src_dir/$name-*
./configure \
    --prefix=$prefix \
    PY_PREFIX=$prefix
(cd test/cpp; ln -s . .libs)
make -j60
make install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
