sudo apt-get install zsh fonts-powerline steam tmux curl wget apt-transport-https qbittorrent numlockx openjdk-8-jdk openjdk-8-jre php7.0 composer

curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update

sudo apt-get install syncthing spotify-client

wget https://dl.discordapp.net/apps/linux/0.0.1/discord-0.0.1.deb

sudo dpkg -i discord-*.deb

sudo apt-get -f install

rm discord-*.deb
