#!/bin/bash

# Install snaps
sudo snap install discord spotify
sudo snap install --classic skype
sudo snap install --classic slack

git config --global user.email $1
git config --global user.name $2
git config --global diff.tool meld
git config --global merge.tool meld
git config --global core.excludesfile ~/.dotfiles/.gitignore_global
git config --global push.default simple

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --filename=composer --install-dir=/usr/bin
php -r "unlink('composer-setup.php');"


