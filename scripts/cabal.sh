#!/bin/bash

. conf.sh

name=cabal
echo "!!!! build $name !!!!"

rm -rf $src_dir
mkdir -p $src_dir
cd $src_dir
tar xaf $distfiles/haskell-platform-2013.2.*.tar.*

cd haskell-platform-*/packages/transformers-*
runghc Setup.hs configure --prefix=$prefix
runghc Setup.hs build
runghc Setup.hs install
cd $src_dir

cd haskell-platform-*/packages/mtl-*
runghc Setup.hs configure --prefix=$prefix
runghc Setup.hs build
runghc Setup.hs install
cd $src_dir

cd haskell-platform-*/packages/text-*
runghc Setup.lhs configure --prefix=$prefix
runghc Setup.lhs build
runghc Setup.lhs install
cd $src_dir

cd haskell-platform-*/packages/parsec-*
runghc Setup.hs configure --prefix=$prefix
runghc Setup.hs build
runghc Setup.hs install
cd $src_dir

cd haskell-platform-*/packages/network-*
runghc Setup.hs configure --prefix=$prefix
runghc Setup.hs build
runghc Setup.hs install
cd $src_dir

cd haskell-platform-*/packages/HTTP-*
runghc Setup.lhs configure --prefix=$prefix
runghc Setup.lhs build
runghc Setup.lhs install
cd $src_dir

cd haskell-platform-*/packages/zlib-*
runghc Setup.hs configure --prefix=$prefix
runghc Setup.hs build
runghc Setup.hs install
cd $src_dir

cd haskell-platform-*/packages/random-*
runghc Setup.hs configure --prefix=$prefix
runghc Setup.hs build
runghc Setup.hs install
cd $src_dir

cd haskell-platform-*/packages/cabal-install-*
runghc Setup.hs configure --prefix=$prefix
runghc Setup.hs build
runghc Setup.hs install
cd $src_dir

cd $wd

cabal update
cabal install cabal-install
cabal install parsec
cabal install network
cabal install HTTP
cabal install zlib
cabal install happy
cabal install alex
cabal install regex-posix
cabal install hmatrix-0.15.0.1

echo "!!!! $name build !!!!"

rm -rf $temp_dir
