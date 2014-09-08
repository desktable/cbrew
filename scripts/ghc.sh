#!/bin/bash

. conf.sh

name=ghc
echo "!!!! build $name bin !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xaf $distfiles/$name-7.6.3*.tar.*

rm -rf $HOME/.ghc
rm -rf $HOME/.cabal
cd $name-*
./configure \
    --prefix=$prefix
make install

cd $wd
echo "!!!! $name bin build !!!!"

rm -rf $temp_dir
