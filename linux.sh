#!/bin/bash

# Install all the apps I need
sudo pacman --needed --noconfirm -S php rsync syncthing calibre qbittorrent gnome-tweak-tool docker docker-compose chrome-gnome-shell git vim meld zsh

# Include a key that is needed for discord below
gpg --recv-keys 0FC3042E345AD05D

# Install 3rd party apps
yaourt -S --noconfirm --needed google-chrome spotify discord
