#!/bin/bash
# 
# Script to help bypass endpoint solutions and run Invoke-Mimikatz.ps1. 
# 
# Author: Ricardo Ribeiro Tavares (@1RicardoTavares)
# License: BSD 3-Clause
# https://github.com/1RicardoTavares/Offensive-PowerShell
#

#Instalação do ZSH
sudo apt update && sudo apt upgrade
sudo apt install -y curl terminator zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
wget https://raw.githubusercontent.com/1RicardoTavares/environment/master/shell/zshrc.txt -O ~/.zshrc
sudo cp ~/.zshrc /root
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin

#Instalação da fonte Meslo
cd /tmp 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Meslo.zip
sudo unzip Meslo.zip -d /usr/share/fonts
sudo fc-cache -fv
rm -rf Meslo.zip
sudo fc-cache -fv

#Instalacão do colorls
sudo apt install -y ruby ruby-dev ruby-colorize libncurses5-dev libtinfo-dev 
sudo gem install colorls

#Mensagem de configuração
echo -e " ---------------------------------------------"
echo -e "|          INSTALAÇÃO FINALIZADA              |"
echo -e " ---------------------------------------------"
echo -e "|        REALIZE AS AÇÕES A SEGUIR:           |"
echo -e " ---------------------------------------------"
echo -e "| 1 - Execute no shell o comando:             |"
echo -e "|     chsh -s $(which zsh)                    |"
echo -e "|     para tonar o ZSH seu shell padrão;      |"
echo -e "| 2 - Abra o terminator, entre em PREFERENCES |"                    
echo -e "|     dentro da guia PROFILE, selecione a     |"
echo -e "|     guia GENERAL e use a FONTE:             |"
echo -e "|     MesloLGS NF RegularForPowerline 18;     |"
echo -e "| 4 - Feche e abra novamente o terminator;    |"
echo -e "| 5 - Teste a visualização de seus arquivos.  |"    
echo -e "|     com os comandos l e ll.                 |"
echo -e " ---------------------------------------------"
