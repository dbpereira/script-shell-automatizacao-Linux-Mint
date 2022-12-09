#!/bin/bash
## AUTOMATIZAÇÃO PROGRAMAS LINUX MINT BY DANIEL BARBOSA PEREIRA ##

echo "Instalação personalizada programas Linux Mint by Daniel Barbosa Pereira"

echo ATUALIZANDO REPOSITÓRIOS
sudo apt-get update -y
echo ========================================

echo INSTALANDO SNAP
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt install snapd
echo ========================================

echo INSTALANDO CHROME
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install google-chrome-stable -y
echo ========================================

echo INSTALANDO GIT-BASH
sudo apt install git -y
git config --global user.name dbpereira
git config --global user.email danieldbpereira@gmail.com
echo ========================================

echo INSTALANDO GIT-HUB
wget https://github.com/shiftkey/desktop/releases/download/release-2.9.0-linux4/GitHubDesktop-linux-2.9.0-linux4.AppImage -O githubdesktop.appimage
chmod a+x githubdesktop.appimage
sudo ./githubdesktop.appimage --install
echo ========================================

echo INSTALANDO DROPBOX
sudo apt install dropbox -y
echo ========================================

echo INSTALANDO VISUAL STUDIO CODE
sudo apt-get update 
sudo apt install apt-transport-https
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt install code -y
echo ========================================

echo INSTALANDO TEAMS
sudo curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'
sudo apt update
sudo apt install teams -y
echo ========================================

echo INSTALANDO GIMP
sudo apt install gimp -y
echo ========================================

echo INSTALANDO VIRTUALBOX
sudo apt install virtualbox -y
echo ========================================

echo INSTALANDO SPOTIFY
sudo apt install spotify-client -y
echo ========================================

echo INSTALANDO TEAMVIEWER
wget -c https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt-get install ./teamviewer*.deb -y
echo ========================================

echo INSTALANDO WHATSAPP
sudo apt-get install whatsapp-desktop -y
echo ========================================

echo INSTALANDO VLC 
sudo apt install vlc -y
echo ========================================

echo INSTALANDO WINE
sudo apt install wine -y
echo ========================================

echo INSTALANDO PLAYONLINUX
sudo apt install playonlinux -y
echo ========================================

echo "Instalação finalizada"

echo ATENÇÃO! VERIFIQUE SE TODOS PROGRAMAS FORAM INSTALADOS CORRETAMENTE.
