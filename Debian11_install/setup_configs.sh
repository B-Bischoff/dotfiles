#/bin/bash

# GIT STUFF
git config --global user.name "B-Bischoff"
git config --global user.email "bischoff.brice@gmail.com"

# ZSH
cd ../zshrc
cp .zshrc ~/
mkdir -p ~/.oh-my-zsh/themes
cp .oh-my-zsh/themes/refined.zsh-theme ~/.oh-my-zsh/themes/

# TMUX
cd ../tmux
cp .tmux.conf ~/
cp -r  .tmux ~/

# VIM
cd ../vimsettings
cp .vimrc ~/

# NVIM
cd ../
cp -r nvim/ ~/.config

# I3
cd i3/
mkdir -p ~/.config/i3
cp config ~/.config/i3

# COMPTON
cd ../compton
cp compton.conf ~/.config/

# WALLPAPERS
cd ../wallpapers
cp * ~/Pictures

# FONT
cd ../font
unzip PkgTTC-Iosevka-28.0.7.zip
sudo cp *.ttc ~/.local/share/fonts
sudo fc-cache
rm *.ttc
