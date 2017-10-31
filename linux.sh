#!/bin/bash

# SPOTIFY
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410

echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# PHP updated repo
sudo add-apt-repository -y ppa:ondrej/php

# Setup nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

# Read the repos
sudo apt-get update -y

# install all the stuff
sudo apt-get install build-essential fonts-powerline zsh meld steam calibre curl vim-nox qbittorrent php7.1-fpm php7.1 php7.1-common php7.1-curl php7.1-dom php7.1-xdebug php7.1-mbstring spotify-client apt-transport-https ca-certificates software-properties-common nodejs

# Install docker
cd /tmp && curl -o get-docker.sh get.docker.com && sudo bash ./get-docker.sh

