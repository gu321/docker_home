#!/usr/bin/env bash

PREFIX=`realpath $(cd "$(dirname "$0")"; pwd)`
cd ~

if [ ! -f "~/.py3env/bin/activate" ]; then
virtualenv -p /usr/bin/python3 ~/.py3env
fi

function copy {
    rm ~/$1
    ln -s $PREFIX/home/$1 ~
}


copy .hgrc
copy .bashrc
copy .hgignore

