#!/bin/bash

# Setup Pre Reqs
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Setup Repos
# PHP
sudo add-apt-repository -y ppa:ondrej/php

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable" | sudo tee /etc/apt/sources.list.d/docker.list
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

# Syncthing
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Install all the apps I need
sudo apt update -y
sudo apt install -y php7.1 php7.1-fpm php7.1-common nodejs rsync syncthing calibre qbittorrent docker-ce git vim meld zsh steam fonts-powerline meld flatpak

# Flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub com.discordapp.Discord com.skype.Client com.slack.Slack com.spotify.Client com.uploadedlobster.peek

git config --global user.email $1
git config --global user.name $2
git config --global diff.tool meld
git config --global merge.tool meld
git config --global core.excludesfile ~/.dotfiles/.gitignore_global
git config --global push.default simple

git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

rm ~/.zshrc 2>&1 > /dev/null
rm ~/.vimrc 2>&1 > /dev/null

mkdir -p ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/.dotfiles/.zshrc ~/.zshrc 2>&1 > /dev/null
ln -s ~/.dotfiles/.vimrc ~/.vimrc 2>&1 > /dev/null

chsh -s /bin/zsh

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --filename=composer --install-dir=/usr/bin
php -r "unlink('composer-setup.php');"


