#!/bin/bash

echo
echo "Installing AUR packages"
echo
TEMP_DIR=$(mktemp -d)
CURRENT_DIR=$(pwd)

while read AUR_PKG
do
	if ! pacman -Q ${AUR_PKG} > /dev/null; then
		cd $TEMP_DIR
		git clone https://aur.archlinux.org/${AUR_PKG}.git
		cd $AUR_PKG && makepkg -si --noconfirm && cd $TEMP_DIR
	fi
done < aur-pkg.txt

cd $CURRENT_DIR
