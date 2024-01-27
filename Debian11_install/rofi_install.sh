#!/bin/bash

sudo apt install -y \
flex \
bison \
libgdk-pixbuf2.0-dev \
libstartup-notification0-dev \
libxkbcommon-dev \
libglib2.0-dev \
libxcb-xinerama0-dev \
libxcb-randr0-dev \
libxcb-cursor-dev \
libxkbcommon-x11-dev \
libxkbcommon-x11-0 \
libxcb-xkb-dev \
libxcb-ewmh-dev \
libxcb-icccm4-dev \
libxcb-util-dev \
libpangocairo-1.0-0 \
libpango1.0-dev \
check

git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
cd ..
rm -rf rofi

# Modify default theme
sed -i "s/theme='style-1'/theme='style-4'/" ~/.config/rofi/launchers/type-4/launcher.sh

echo ""
echo "-----------------------------------------------------------------"
echo ""
echo "install and unzip .tar.gz at : https://davatorium.github.io/rofi/"
echo "then configure and sudo make install"
