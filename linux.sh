#!/bin/bash

sudo pacman -Syu

sudo pacman -S --needed --noconfirm vim calibre gnome-tweak-tool powerline-fonts zsh qbittorrent php meld docker docker-compose composer wget screenfetch thunderbird

gpg --recv-keys 0FC3042E345AD05D

yaourt -S --needed --noconfirm google-chrome spotify discord chrome-gnome-shell-git

cd /tmp && wget https://www.privateinternetaccess.com/installer/pia-nm.sh && sudo bash pia-nm.sh
