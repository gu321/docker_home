#!/usr/bin/env bash

PREFIX=`realpath $(cd "$(dirname "$0")"; pwd)`
cd ~

function copy {
    rm ~/$1
    ln -s $PREFIX/home/$1 ~
}

copy .hgrc
copy .bashrc
copy .hgignore
