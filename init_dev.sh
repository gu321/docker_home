#!/usr/bin/env bash

PREFIX=`realpath $(cd "$(dirname "$0")"; pwd)`
cd ~

virtualenv -p /usr/bin/python3.6 ~/.py3env

function copy {
    rm ~/$1
    ln -s $PREFIX/home/$1 ~
}


copy .hgrc
copy .bashrc
copy .hgignore

