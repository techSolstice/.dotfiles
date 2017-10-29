#!/bin/bash

if [ `uname -s` = 'Darwin' ]; then
    ./osx.sh
else
    ./linux.sh
fi

git config --global user.email $1
git config --global user.name $2
git config --global diff.tool meld
git config --global merge.tool meld

git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

rm ~/.zshrc 2>&1 > /dev/null

mkdir -p ~/.vim/bundle
mkdir -p ~/.config/nvim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

chsh -s /bin/zsh

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --filename=composer --install-dir=/usr/bin
php -r "unlink('composer-setup.php');"
