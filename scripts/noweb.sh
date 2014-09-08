#!/bin/bash

. conf.sh

name=noweb
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xaf $distfiles/$name-*.tgz

mkdir -p $prefix/share/texmf/tex/latex/local
cd $name-*/src
./awkname gawk
make BIN=$prefix/bin LIB=$prefix/lib MAN=$prefix/man TEXINPUTS=$prefix/share/texmf/tex/latex/local all install

cd $wd
echo "!!!! $name build !!!!"

rm -rf $temp_dir
