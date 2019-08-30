#!/bin/bash
# 
# Script to help bypass endpoint solutions and run Invoke-Mimikatz.ps1. 
# 
# Author: Ricardo Ribeiro Tavares (@1RicardoTavares)
# License: BSD 3-Clause
# https://github.com/1RicardoTavares/Offensive-PowerShell
#

#Instalação do ZSH
sudo apt update
sudo apt install -y curl terminator zsh
chsh -s $(which zsh)
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin

#Instalação de fonte especial
cd /tmp 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Meslo.zip
sudo unzip Meslo.zip -d /usr/share/fonts
sudo fc-cache -fv
rm -rf Meslo.zip
sudo fc-cache -fv

#Instalacão do colorls
sudo apt install -y ruby ruby-dev ruby-colorize libncurses5-dev libtinfo-dev 
sudo gem install colorls