#!/bin/bash

cd /tmp
git clone "git@github.com:Epitech/dump.git"
cd dump
chmod +x "install_packages_dump.sh"
./install_packages_dump.sh
sudo dnf install "i3-gaps" "rofi" "polybar" "picom" "dialog"
cp ./brightness /usr/bin/brightness
cp ./my_boot /usr/bin/my_boot
git clone "git@github.com:Heliferepo/suckless.git"
cd suckless
make install
