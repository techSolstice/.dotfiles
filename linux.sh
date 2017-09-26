sudo apt-get update -y

sudo apt-get -y install zsh fonts-powerline steam tmux curl wget apt-transport-https ca-certificates software-properties-common qbittorrent numlockx net-tools meld calibre arc-theme linux-image-extra-$(uname -r) linux-image-extra-virtual

curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo add-apt-repository -y ppa:ondrej/php

sudo add-apt-repository -y ppa:noobslab/icons

sudo add-apt-repository -y ppa:noobslab/themes

sudo add-apt-repository -y ppa:webupd8team/java

sudo add-apt-repository -y ppa:neovim-ppa/stable

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get -y install syncthing spotify-client php7.1-fpm php7.1 php7.1-xml php7.1-sqlite3 php7.1-xdebug php7.1-common php7.1-mbstring php7.1-curl php7.1-gd php7.1-opcache php7.1-intl php7.1-apcu nodejs oracle-java8-installer flat-remix-icons neovim python-dev python-pip python3-dev python3-dev docker-ce

sudo pip2 install --upgrade neovim

sudo pip3 install --upgrade neovim

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi

sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim

sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

sudo php composer-setup.php --install-dir=/usr/bin --filename=composer

sudo chmod +x /usr/bin/composer

php -r "unlink('composer-setup.php');"

wget https://installers.privateinternetaccess.com/download/pia-v72-installer-linux.tar.gz

tar -xzf pia-v72-installer-linux.tar.gz

./pia-v72-installer-linux.sh

rm ./pia-v72-installer-linux*
