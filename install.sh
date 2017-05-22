if [ `uname -s` = 'Darwin' ]; then
    sh ./osx.sh
else
    sh ./linux.sh
fi

rm ~/.zshrc 2>&1 > /dev/null

ln -s ~/.dotfiles/.zshrc ~/.zshrc

rm -rf ~/.atom 2>&1 > /dev/null

ln -s ~/.dotfiles/atom ~/.atom

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

