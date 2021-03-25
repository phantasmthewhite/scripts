#!/bin/bash

curl https://raw.githubusercontent.com/phantasmthewhite/scripts/main/zshrc | base64 -d > ~/.zshrc

sudo apt-get update && sudo apt-get upgrade
sudo apt-get install git
sudo apt-get install default-jdk

#Install Ghidra
git clone https://github.com/NationalSecurityAgency/ghidra.git /opt/

#Install Proxmark3 RRG/Iceman
