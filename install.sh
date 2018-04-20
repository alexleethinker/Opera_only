#!/bin/bash 

function install_PACKAGES {

  sudo apt-get update
  echo ""
  apt -y purge apache2-* bind9-* xinetd samba-* nscd-* portmap sendmail-* sasl2-bin
  apt -y purge lynx memtester unixodbc python-* odbcinst-* sudo tcpdump ttf-*
  
  echo "Installing packages"
  apt install -y software-properties-common fcitx ttf-wqy-zenhei
  apt install -y xorg
  apt install -y sakura
  apt install -y xfce4-power-manager dirmngr 
  apt install -y apt-transport-https
  apt install -y wicd volumeicon-alsa pulseaudio pavucontrol fonts-arphic-uming
  apt install -y fcitx-googlepinyin
  add-apt-repository 'deb http://httpredir.debian.org/debian/ stretch main contrib non-free'
  add-apt-repository 'deb http://ftp.de.debian.org/debian sid main contrib' #flash-plugin
  add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free'
  wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
  apt update
  apt install -y flashplugin-nonfree
  apt install -y firmware-iwlwifi
  modprobe -r iwlwifi ; modprobe iwlwifi
  apt -y install opera-stable
  apt -y install openbox obmenu
  apt -y install slim
  
  apt autoremove && apt clean

}

function configure {
  
  echo -e "exec --no-startup-id opera-stable" >> ~/.config/i3/config 
  #wget http://cdn2.ime.sogou.com/dl/index/1509619794/sogoupinyin_2.2.0.0102_amd64.deb?st=2x-8JcNU30u_1c669mX_jQ&e=1522245428&fn=sogoupinyin_2.2.0.0102_amd64.deb
}

function main {
  install_PACKAGES
  #configure
}

main
