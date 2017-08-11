#!/usr/bin/env bash

PREFIX=`realpath $(cd "$(dirname "$0")"; pwd)`
cd ~


function home_link {
    rm -rf $HOME/$1
    ln -s $PREFIX/home/$1 $HOME
}


home_link .hgrc
home_link .tmux_default
home_link .bashrc
home_link .hgignore
home_link .pip
home_link .bash_aliases

if [ ! -f "$HOME/.autojump/etc/profile.d/autojump.sh" ]; then
cd /tmp
git clone git://github.com/joelthelion/autojump.git --depth=1
cd autojump
./install.py
fi

if [ ! -f "$HOME/.py3env/bin/activate" ]; then
virtualenv -p /usr/bin/python3 ~/.py3env
fi
