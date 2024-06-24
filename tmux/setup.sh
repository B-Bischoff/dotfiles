#!/bin/bash

# remove existing tmux from apt repositories
sudo apt remove tmux

# install dependencies
sudo apt update
sudo apt install libevent-dev libncurses-dev bison -y

# build and install from sources (needed to get tmux popup)
src="tmux-sources-tmp"

git clone https://github.com/tmux/tmux.git $src
cd $src

sh autogen.sh
./configure && sudo make install

cd ..
rm -rf $src

# install config
path="$HOME/"

cp .tmux.conf $path
cp -r .tmux $path
