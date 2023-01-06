#!/bin/bash

lscpi | egrep 'VGA|NVIDIA'

if [ "$?" == "1" ]
then
	sudo apt-add-repository contrib
	sudo apt-add-repository non-free

	sudo apt update
	sudo apt install nvidia-driver -y
fi
