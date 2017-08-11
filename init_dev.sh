#!/usr/bin/env bash

PREFIX=`realpath $(cd "$(dirname "$0")"; pwd)`
cd ~


function home_link {
    rm -rf ~/$1
    ln -s $PREFIX/home/$1 ~
}


home_link .hgrc
home_link .tmux_default
home_link .bashrc
home_link .hgignore
home_link .pip

if [ ! -f "~/.py3env/bin/activate" ]; then
virtualenv -p /usr/bin/python3 ~/.py3env
fi
