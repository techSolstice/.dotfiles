if [ `uname -s` = 'Darwin' ]; then
    sh ./osx.sh
else
    sh ./linux.sh
fi

git config --global user.email $1
git config --global user.name $2

git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

rm ~/.zshrc 2>&1 > /dev/null

ln -s ~/.dotfiles/.zshrc ~/.zshrc

rm -rf ~/.atom 2>&1 > /dev/null

ln -s ~/.dotfiles/atom ~/.atom

chsh -s /bin/zsh
