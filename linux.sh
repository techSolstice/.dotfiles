#!/bin/bash

sudo dnf upgrade -y

if [ -z "$INSTALLNVIDIA" ];
then
	sudo dnf config-manager -y --add-repo=https://negativo17.org/repos/fedora-nvidia.repo
	sudo dnf install -y nvidia-settings kernel-devel dkms-nvidia vulkan.i686 nvidia-driver-libs.i686
fi

sudo dnf config-manager -y --add-repo=https://negativo17.org/repos/fedora-spotify.repo
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install -y steam spotify-client vim calibre arc-theme gnome-tweak-tool powerline-fonts zsh qbittorrent shutter php meld google-chrome docker docker-compose f26-backgrounds-animated composer php-pecl-xdebug wget screenfetch thunderbird

cd /tmp && rm -rf Flat-Remix && git clone https://github.com/daniruiz/Flat-Remix && mkdir -p ~/.icons && cp -r "Flat-Remix/Flat Remix" ~/.icons

wget https://www.privateinternetaccess.com/installer/pia-nm.sh
sudo bash pia-nm.sh
