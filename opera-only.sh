#!/bin/bash 

function install_PACKAGES {

  sudo apt-get update
  echo ""

  echo "Installing packages"
  sudo apt-get install -y \
  # GNU/UI
    xorg \
    sakura \
    sddm \
    software-properties-common \
    ttf-wqy-zenhei \
    fcitx \
    fcitx-rime \
    network-manager-gnome \
    volumeicon-alsa \
    pulseaudio \
    pavucontrol \
    fonts-arphic-uming\
    
  # i3 
    i3 \
    conky \
    
  # pinyin
    fcitx-googlepinyin
  echo ""
  
  sudo add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free'
  wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
  sudo apt update
  sudo apt -y install opera-stable

}


function main {
  install_PACKAGES
}

main
