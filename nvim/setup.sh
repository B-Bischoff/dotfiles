#!/bin/bash

path="$HOME/.config/nvim"

mkdir -p $path
cp -r * $path
rm $path/setup.sh
