#!/bin/bash

#Check if operating system is Linux
if [ ! $(uname) = 'Linux' ]; then
	echo 'ERROR: Operating system is not Linux' >> linuxsetup.log
	exit 1
fi

#Create TRASH directory
mkdir -p ~/.TRASH

#Change name of .nanorc
if [ -e ~/.nanorc ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo 'Current .nanorc file was changed to ".bup_nanorc"' >> linuxsetup.log
fi

#Redirect contents of etc/nanorc to ~/.nanorc
cp etc/nanorc ~/.nanorc

#Add line to end of ~/.bashrc
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc
