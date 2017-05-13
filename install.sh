if [ `uname -s` = 'Darwin' ]; then
    sh ./osx.sh
else
    sh ./linux.sh
fi

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > ~/neobundle.sh
sh ~/neobundle.sh
rm ~/neobundle.sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/atom ~/.atom
