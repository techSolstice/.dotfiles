sudo apt-get install zsh fonts-powerline steam tmux php composer php7.0-sqlite3 arc-theme php-common curl wget apt-transport-https

curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

sudo apt-get update

sudo apt-get install syncthing
