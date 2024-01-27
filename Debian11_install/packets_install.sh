#!/bin/bash
#

sudo apt update -y
sudo apt upgrade -y

sudo apt install -y \
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
curl \
ripgrep \
npm \
playerctl \
tree \
meld \
htop \
xsel \

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install nodejs 18
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt update
sudo apt upgrade
sudo apt install nodejs

# neovim typescript autocompletion
sudo npm install -g typescript typescript-language-server

# graphic programming packets
sudo apt install -y \
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

# oh my zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
