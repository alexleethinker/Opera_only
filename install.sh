#!/bin/bash 

function install_PACKAGES {

  sudo apt-get update
  echo ""

  echo "Installing packages"
  sudo apt install -y software-properties-common fcitx ttf-wqy-zenhei
  sudo apt install -y xorg
  sudo apt install -y sakura
  sudo apt install -y network-manager-gnome volumeicon-alsa pulseaudio pavucontrol fonts-arphic-uming
  sudo apt install -y fcitx-googlepinyin
  sudo add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free'
  wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
  sudo apt update
  sudo apt -y install opera-stable
  sudo apt -y install i3
  sudo apt -y install sddm

}

function configure {
  
  echo -e "exec --no-startup-id opera" >> ~/.config/i3/config 
}

function main {
  install_PACKAGES
}

main
