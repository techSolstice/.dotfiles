#!/bin/bash

# Setup Pre Reqs
sudo dpkg --add-architecture i386
sudo apt update && apt install -y apt-transport-https lsb-release ca-certificates curl wget gnupg2 software-properties-common

# Setup Repos
# php
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list > /dev/null

# Docker
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable"

# Nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

# Syncthing
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Theme and Icons

# Install all the apps I need
sudo apt update && sudo apt install -y php7.1 php7.1-fpm php7.1-common nodejs rsync syncthing calibre qbittorrent docker-ce xfce4-goodies git vim meld zsh arc-theme numix-icon-theme steam fonts-powerline snapd

git config --global user.email $1
git config --global user.name $2
git config --global diff.tool meld
git config --global merge.tool meld
git config --global core.excludesfile ~/.dotfiles/.gitignore_global

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
