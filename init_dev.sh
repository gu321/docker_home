#!/usr/bin/env bash

PREFIX=`realpath $(cd "$(dirname "$0")"; pwd)`
cd ~

ln -s $PREFIX/home/.hgrc .


