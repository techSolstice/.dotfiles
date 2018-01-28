#!/bin/bash

# Setup Pre Reqs
sudo dnf -y install dnf-plugins-core

# Setup Repos
# RPM Fusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Docker
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# Nodejs
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -

# Install all the apps I need
sudo dnf install -y php php-fpm php-common nodejs rsync syncthing calibre qbittorrent docker-ce docker-compose chrome-gnome-shell git vim meld zsh arc-theme paper-icon-theme numix-icon-theme numix-icon-theme-circle steam powerline-fonts composer phpunit gnome-tweak-tool

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

#php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
#sudo php composer-setup.php --filename=composer --install-dir=/usr/bin
#php -r "unlink('composer-setup.php');"
