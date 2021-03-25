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
git clone https://github.com/NationalSecurityAgency/ghidra.git /opt/ghidra

#Install Proxmark3 RRG/Iceman & requirements
sudo apt-get install --no-install-recommends git ca-certificates build-essential pkg-config libreadline-dev gcc-arm-none-eabi libnewlib-dev qtbase5-dev libbz2-dev libbluetooth-dev
sudo apt remove modemmanager
git clone https://github.com/RfidResearchGroup/proxmark3.git /opt/proxmark3
cd proxmark3 && make clean && make all
sudo make install
