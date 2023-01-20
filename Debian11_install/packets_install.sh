#!/bin/bash

sudo apt update
sudo apt upgrade

sudo apt install -y\
vim \
tmux \
git \
g++ \
i3 \
compton \
nitrogen \
python3-venv \
ripgrep \
cmake \
rofi \

# graphic programming packets
sudo -y \
apt-get \
install \
libsoil-dev \
libglm-dev \
libglew-dev \
libglfw3-dev \
libxinerama-dev \
libxcursor-dev \
libxi-dev \
libfreetype-dev \
libgl1-mesa-dev \
xorg-dev  \
freeglut3-dev
