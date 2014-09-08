#!/bin/bash

. conf.sh

name=distclean
echo "!!!! build $name !!!!"

rm -rf $prefix/* || true
mkdir -p $prefix || true

echo "!!!! $name build !!!!"

rm -rf $temp_dir
