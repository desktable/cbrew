#!/bin/bash

. conf.sh

if [ -n "$legacy_system" ] ; then
    ./scripts/distclean.sh
    ./scripts/tar.sh
    ./scripts/gmp.sh
    ./scripts/mpfr.sh
    ./scripts/mpc.sh
    ./scripts/gcc.sh
    ./scripts/jansson.sh
    ./scripts/hwloc.sh
    ./scripts/netloc.sh
    ./scripts/openmpi.sh
    ./scripts/grep.sh
    ./scripts/ncurses.sh
    ./scripts/libevent.sh
    ./scripts/readline.sh
    ./scripts/rlwrap.sh
    ./scripts/tmux.sh
    ./scripts/bash.sh
    ./scripts/false.sh
    exit 0
fi

./scripts/distclean.sh

./scripts/gmp.sh
./scripts/mpfr.sh
./scripts/mpc.sh
[ $arch = noarch ] && ./scripts/gcc.sh
./scripts/tar.sh
./scripts/grep.sh
[ $arch = noarch ] && ./scripts/jansson.sh
[ $arch = noarch ] && ./scripts/hwloc.sh
[ $arch = noarch ] && ./scripts/netloc.sh
[ $arch = noarch ] && ./scripts/openmpi.sh
[ $arch = noarch ] && ./scripts/lapack.sh
./scripts/fftw.sh
./scripts/libxml2.sh
./scripts/libxslt.sh
./scripts/curl.sh
./scripts/zlib.sh
./scripts/git.sh
./scripts/ncurses.sh
./scripts/libevent.sh
./scripts/readline.sh
./scripts/rlwrap.sh
./scripts/tmux.sh
./scripts/bash.sh
./scripts/false.sh
[ $arch = noarch ] && ./scripts/ghc.sh
[ $arch = noarch ] && ./scripts/cabal.sh
[ $arch = noarch ] && ./scripts/racket.sh
./scripts/chicken.sh
