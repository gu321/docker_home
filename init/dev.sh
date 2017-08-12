#!/usr/bin/env bash

PREFIX=`realpath $(cd "$(dirname "$0")"; pwd)`/..
cd ~


function init {
    rm -rf $HOME/$1
    #ln -s $PREFIX/home/$1 $HOME
    cp $PREFIX/home/$1 $HOME
}


init .hgrc
init .tmux_default
init .bash_profile
init .bashrc
init .hgignore
init .pip
init .bash_aliases

if [ ! -f "$HOME/.autojump/etc/profile.d/autojump.sh" ]; then
cd /tmp
git clone git://github.com/joelthelion/autojump.git --depth=1
cd autojump
./install.py
fi

if [ ! -f "$HOME/.py3env/bin/activate" ]; then
virtualenv -p /usr/bin/python3 ~/.py3env
fi

source $HOME/.bashrc
