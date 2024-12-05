#!/bin/bash

#Remove .nanorc file from home
rm ~/.nanorc

#Remove line from end of bashrc file
sed -i '/source.*bashrc_custom$/d' ~/.bashrc

#Remove TRASH Directory
rm -r ~/.TRASH

