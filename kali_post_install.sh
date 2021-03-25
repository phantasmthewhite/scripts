#!/bin/bash

# Menu
PS3="Please enter your choice: "
select option in "APT update & upgrade" "Change keyboard layout to FR" "Customize .zshrc" "Quit"
do
	case $option in
		1)
			echo "APT update & upgrade."; sudo apt-get update && sudo apt-get upgrade && sudo apt install -y --reinstall virtualbox-guest-x11
			;;
		2)
		# Keyboard to FR
			sudo dpkg-reconfigure keyboard-configuration
			echo "Keyboard layout changed to FR."
			;;
		3)
		# Custom ZSHRC
			echo "Replacing default ZSHRC..." ; curl https://raw.githubusercontent.com/phantasmthewhite/scripts/main/zshrc | base64 -d > ~/.zshrc
			source ~/.zshrc
			;;
		4)
			break
			;;
	esac
done


# # Custom ZSHRC
# echo "Replacing default ZSHRC..." ; curl https://raw.githubusercontent.com/phantasmthewhite/scripts/main/zshrc &> /dev/null | base64 -d > ~/.zshrc &> /dev/null
# source ~/.zshrc

# # Install various tools

# echo "Installing GIT..."; sudo apt-get install git &> /dev/null
# echo "Installing default JDK..."; sudo apt-get install default-jdk &> /dev/null
# echo "Installing Terminator..."; sudo apt-get install terminator &> /dev/null
# echo "Installing FuzzyFinder..."; sudo apt-get install fzf &> /dev/null
# echo "Installing Tree..."; sudo apt-get install tree &> /dev/null
# echo "Installing Empire C2..."; sudo apt-get install powershell-empire &> /dev/null

# # Custom Terminator
# sudo pip install requests &> /dev/null
# mkdir -p ~/.config/terminator/plugins &> /dev/null
# echo "Downloading custom profiles for Terminator..."; wget https://git.io/v5Zww -O ~/.config/terminator/plugins/terminator-themes.py &> /dev/null

# # Install SublimeText
# wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg &> /dev/null | sudo apt-key add - &> /dev/null
# sudo apt-get install apt-transport-https &> /dev/null
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo apt-get update &> /dev/null
# echo "Installing SublimeText..."; sudo apt-get install sublime-text &> /dev/null

# # Install Typora
# wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add - &> /dev/null
# sudo add-apt-repository 'deb https://typora.io/linux ./' &> /dev/null
# sudo apt-get update &> /dev/null
# echo "Installing Typora..."; sudo apt-get install typora &> /dev/null

# # Install Ghidra
# echo "Installing Ghidra in /opt ..."; sudo git clone https://github.com/NationalSecurityAgency/ghidra.git /opt/ghidra &> /dev/null

# # Install Proxmark3 RRG/Iceman & requirements
# sudo apt-get install --no-install-recommends git ca-certificates build-essential pkg-config libreadline-dev gcc-arm-none-eabi libnewlib-dev qtbase5-dev libbz2-dev libbluetooth-dev &> /dev/null
# sudo apt remove modemmanager &> /dev/null
# sudo git clone https://github.com/RfidResearchGroup/proxmark3.git /opt/proxmark3 &> /dev/null
# cd proxmark3 && make clean &> /dev/null && make all &> /dev/null
# echo "Downloading & Installing Proxmark3 in /opt ..."; sudo make install &> /dev/null

# # OSINT TOOLS
# # Install Ignorant (Phone check)
# sudo git clone https://github.com/megadose/ignorant.git /opt/ignorant &> /dev/null
# echo "Installing Ignorant..."; cd /opt/ignorant && sudo python3 setup.py install &> /dev/null
# # Install Xeuledoc (Google Docs check)
# git clone https://github.com/Malfrats/xeuledoc.git /opt/xeuledoc &> /dev/null
# echo "Installing Xeuledoc..."; cd /opt/xeuledoc/ && sudo python3 setup.py install

# echo "+ Pour le profil Terminator ACI, après l'avoir installé via le plugin, aller dans :"
# echo "Preferences > Layout > Terminal > ACI"
# echo "Et dans Global, cocher Réutiliser les profils pour les nouveaux terminaux."
