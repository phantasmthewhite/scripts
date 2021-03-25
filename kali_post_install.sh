#!/bin/bash

#Custom ZSHRC
curl https://raw.githubusercontent.com/phantasmthewhite/scripts/main/zshrc | base64 -d > ~/.zshrc

#Install various tools
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install git
sudo apt-get install default-jdk
sudo apt-get install terminator
sudo apt-get install fzf
sudo apt-get install tree
sudo apt-get install powershell-empire

#Custom Terminator
sudo pip install requests
mkdir -p ~/.config/terminator/plugins
wget https://git.io/v5Zww -O ~/.config/terminator/plugins/terminator-themes.py

#Install SublimeText
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

#Install Typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora

#Install Ghidra
sudo git clone https://github.com/NationalSecurityAgency/ghidra.git /opt/ghidra

#Install Proxmark3 RRG/Iceman & requirements
sudo apt-get install --no-install-recommends git ca-certificates build-essential pkg-config libreadline-dev gcc-arm-none-eabi libnewlib-dev qtbase5-dev libbz2-dev libbluetooth-dev
sudo apt remove modemmanager
sudo git clone https://github.com/RfidResearchGroup/proxmark3.git /opt/proxmark3
cd proxmark3 && make clean && make all
sudo make install

# OSINT TOOLS
#Install Ignorant (Phone check)
sudo git clone https://github.com/megadose/ignorant.git /opt/ignorant
cd /opt/ignorant
sudo python3 setup.py install
#Install Xeuledoc (Google Docs check)
git clone https://github.com/Malfrats/xeuledoc.git /opt/xeuledoc
cd /opt/xeuledoc/
sudo python3 setup.py install


echo "Pour le profil Terminator ACI, après l'avoir installé via le plugin, aller dans :"
echo "Preferences > Layout > Terminal > ACI"
echo "Et dans Global, cocher Réutiliser les profils pour les nouveaux terminaux."
