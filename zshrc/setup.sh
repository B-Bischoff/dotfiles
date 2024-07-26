#!/bin/bash

# terminal color palette

dconf help &> /dev/null

if [ $? -ne 0 ]; then
	sudo apt update
	sudo apt install dconf-cli -y
fi

profile_path="/org/gnome/terminal/legacy/profiles:/"
profile=`dconf list $profile_path`

use_theme_colors=false
background_color="'rgb(12,7,42)'"
foreground_color="'rgb(234,230,244)'"
palette="['rgb(23,20,33)', 'rgb(218,57,69)', 'rgb(73,230,125)', 'rgb(162,115,76)', 'rgb(205,103,234)', 'rgb(64,160,243)', 'rgb(42,161,179)', 'rgb(208,207,204)', 'rgb(94,92,100)', 'rgb(246,97,81)', 'rgb(70,235,140)', 'rgb(233,173,12)', 'rgb(156,99,175)', 'rgb(87,146,207)', 'rgb(51,199,222)', 'rgb(255,255,255)']"
scrollbar_policy="'never'"
audible_bell=false
use_system_font=false
font="'Monospace 11'"
use_menu_bar=false

echo $background_color

echo $profile
echo $profile_path

dconf write "${profile_path}${profile}use-theme-colors" "$use_theme_colors"
dconf write "${profile_path}${profile}background-color" "$background_color"
dconf write "${profile_path}${profile}foreground-color" "$foreground_color"
dconf write "${profile_path}${profile}palette" "$palette"
dconf write "${profile_path}${profile}scrollbar-policy" "$scrollbar_policy"
dconf write "${profile_path}${profile}audible-bell" "$audible_bell"
dconf write "${profile_path}${profile}use-system-font" "$use_system_font"
dconf write "${profile_path}${profile}font" "$font"
dconf write "${profile_path}${profile}use-menu-bar" "$use_menu_bar"

path="$HOME/"

cp .zshrc $path
cp .oh-my-zsh/themes/refined.zsh-theme ~/.oh-my-zsh/themes/
