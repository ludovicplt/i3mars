#!/bin/bash

path=${PWD}

cd /tmp
git clone "git@github.com:Epitech/dump.git"
cd dump
chmod +x "install_packages_dump.sh"
./install_packages_dump.sh
cd "${path}"
sudo dnf install "i3-gaps" "rofi" "polybar" "picom" "dialog"
cp ./brightness /usr/bin/
cp ./my_boot /usr/bin/
cp -r picom ~/.config/
cp -r i3 ~/.config/
git clone "git@github.com:Heliferepo/suckless.git"
cd suckless
