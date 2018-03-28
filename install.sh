#!/bin/bash 

function install_PACKAGES {

  sudo apt-get update
  echo ""

  echo "Installing packages"
  sudo apt-get install -y \
  # GNU/UI
    xorg \
    sakura \
    software-properties-common \
    ttf-wqy-zenhei \
    fcitx \
    fcitx-rime \
    network-manager-gnome \
    volumeicon-alsa \
    pulseaudio \
    pavucontrol \
    fonts-arphic-uming \
    conky \
    
  # pinyin
    fcitx-googlepinyin
  echo ""
  
  sudo add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free'
  wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
  sudo apt update
  sudo apt -y install opera-stable
  sudo apt -y install i3
  sudo apt -y install sddm

}


function main {
  install_PACKAGES
}

main
