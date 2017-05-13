curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update

sudo apt-get install zsh vim-nox cmake build-essential qbittorrent calibre steam terminator php7.0 php7.0-common php7.0-cli composer spotify-client nodejs

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

wget https://github.com/atom/atom/releases/download/v1.16.0/atom-amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo dpkg -i atom-amd64.deb

sudo apt-get -f install

rm google-chrome-stable_current_amd64.deb

rm atom-amd64.deb

mkdir -p ~/.config/terminator

rm ~/.config/terminator/config

ln -s ~/.dotfiles/config ~/.config/terminator/config

