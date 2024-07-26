#!/bin/bash

picom --version &> /dev/null

if [ $? -ne 0 ]; then
	# dependencies
	sudo apt install -y libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev ninja-build uthash-dev libxcb-dpms0-dev

	# to install meson from pip3 because current apt version is too old
	sudo apt install python3-pip -y
	pip3 install --upgrade pip
	sudo pip3 install --upgrade meson

	# add python3 install dir to path
	PATH="$PATH:$HOME/.local/bin"

	src="picom-11.2"

	unzip ${src}.zip
	cd $src

	meson setup --buildtype=release build
	ninja -C build
	sudo ninja -C build install

	rm -rf $src
fi

mkdir -p $HOME/.config/picom
cp picom.conf $HOME/.config/picom/
