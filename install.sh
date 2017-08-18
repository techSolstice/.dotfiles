if [ `uname -s` = 'Darwin' ]; then
    sh ./osx.sh
else
    sh ./linux.sh
fi

git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

rm ~/.zshrc 2>&1 > /dev/null

ln -s ~/.dotfiles/.zshrc ~/.zshrc

chsh -s /bin/zsh
