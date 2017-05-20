if [ `uname -s` = 'Darwin' ]; then
    sh ./osx.sh
else
    sh ./linux.sh
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm ~/.zshrc

ln -s ~/.dotfiles/.zshrc ~/.zshrc

rm -rf ~/.atom

ln -s ~/.dotfiles/atom ~/.atom
