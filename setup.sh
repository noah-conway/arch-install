#!/bin/bash

CURRENT_DIR=$(pwd)

echo
echo "Setting up desktop environment"
echo

########### Setting up ~/ ###############################
cd /home/$USER
mkdir Downloads Documents Pictures Projects
git clone https://github.com/noah-conway/dotfiles/
mv dotfiles .config
git clone https://github.com/noah-conway/Scripts/
mv Scripts bin

########### .bash_profile settings
echo "export PATH="$HOME/bin:$PATH"" >> /home/$USER/.bash_profile
echo "startx" >> /home/$USER/.bash_profile

########### Setting up git ##############################
git config --global user.name "noah-conway"
git config --global user.email "nconway@posteo.net"

########### Setting up .xinitrc #########################
cp /etc/X11/xinit/xinitrc ~/.xinitrc
sed -i '51,55d' .xinitrc
echo "qtile start" >> .xinitrc
echo "exec startx" >> .xinitrc















