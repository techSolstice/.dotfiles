#!/bin/bash

# Install all the apps I need
sudo pacman --needed --noconfirm -S php rsync syncthing calibre qbittorrent docker docker-compose xfce4-goodies git vim meld zsh curl arc-gtk-theme papirus-icon-theme steam powerline-fonts

# Include a key that is needed for discord below
gpg --recv-keys 8F0871F202119294

# Install AUR apps
yaourt -S --noconfirm --needed google-chrome spotify discord visual-studio-code-bin slack-desktop

wget -O /tmp/pia_nm.sh  https://www.privateinternetaccess.com/installer/pia-nm.sh
sudo chmod +x /tmp/pia_nm.sh
sudo /tmp/pia_nm.sh

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
