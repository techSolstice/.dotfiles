sudo apt-get -y install zsh fonts-powerline steam tmux curl wget apt-transport-https qbittorrent numlockx net-tools

curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

sudo add-apt-repository -y ppa:ondrej/php

sudo apt-get -y update

sudo apt-get -y install syncthing spotify-client php7.1-fpm php7.1 php7.1-xml php7.1-sqlite3 php7.1-xdebug php7.1-common

wget https://dl.discordapp.net/apps/linux/0.0.1/discord-0.0.1.deb

wget https://installers.privateinternetaccess.com/download/pia-v72-installer-linux.tar.gz

sudo dpkg -i discord-*.deb

sudo apt-get -f -y install

tar -xzf pia-v*-installer-linux.tar.gz

./pia-v*-installer-linux.sh

rm discord-*.deb pia-v*
