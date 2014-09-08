#!/bin/bash

if [ $(uname -m) = ppc64 ] ; then
    arch=bgq
elif [ $(uname -m) = x86_64 ] ; then
    arch=noarch
else
    arch=unknown
fi

if [ -z "$prefix" ] ; then
    prefix=$HOME/local
fi

add-to-colon-list () {
    local name="$1"
    local new_value="$2"
    local value="${!name}"
    if [ -z "$value" ] ; then
        export "$name"="$new_value"
    else
        export "$name"="$new_value":"$value"
    fi
}

add-to-colon-list PATH "$prefix/bin"
add-to-colon-list LD_LIBRARY_PATH "$prefix/lib:$prefix/lib64"
add-to-colon-list LIBRARY_PATH "$prefix/lib:$prefix/lib64"
add-to-colon-list C_INCLUDE_PATH "$prefix/include:$prefix/include/ncurses"
add-to-colon-list CPLUS_INCLUDE_PATH "$prefix/include:$prefix/include/ncurses"

if [ -z "$MANPATH" ] ; then
    export MANPATH="$prefix/share/man:$(man --path)"
else
    export MANPATH="$prefix/share/man:$MANPATH"
fi

if [ -z "$TEXINPUTS" ] ; then
    export TEXINPUTS=".:$prefix/share/texmf/tex/latex/local//:"
else
    export TEXINPUTS=".:$prefix/share/texmf/tex/latex/local//:${TEXINPUTS#.:}"
fi

