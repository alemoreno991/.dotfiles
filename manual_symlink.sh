#!/bin/bash


echo "[-] Configuring bashrc  [-]"
ln -s -f $(pwd)/bashrc ~/.bashrc 
ln -s -f $(pwd)/bash_profile ~/.bash_profile 

#install alacritty
echo "[-] Installing alacritty as default terminal emulator [-]"
sudo add-apt-repository ppa:aslatter/ppa
sudo apt update
sudo apt install alacritty
sudo update-alternatives --set x-terminal-emulator /usr/bin/alacritty
ln -s -f $(pwd)/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml 

#install neofetch
echo "[-] Configuring welcome message [-]"
ln -s -f $(pwd)/neofetch/config.conf ~/.config/neofetch/config.conf  

# install Hack Nerd Font --> u can choose another at: https://www.nerdfonts.com/font-downloads
echo "[-] Download fonts [-]"
sudo apt install fonts-powerline
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
unzip Hack.zip -d ~/.fonts
fc-cache -fv

#install synth-shell 
echo "[-] Installing pretty prompt [-]"
###################################################################################
#
# PLEASE INSTALL THIS MANUALLY SINCE IDK HOW TO DO IT AUTOMATICALLY !!
#
###################################################################################
#git clone --recursive https://github.com/andresgongora/synth-shell.git
#chmod +x synth-shell/setup.sh
#cd synth-shell
#./setup.sh
###################################################################################
ln -s -f $(pwd)/synth-shell/synth-shell-prompt.config ~/.config/synth-shell/synth-shell-prompt.config 

#install colorls 
sudo apt-get install ruby-full # WARNING: I had trouble because my package manager in Ubuntu18.04 was not installing ruby>=2.6
gem install colorls
mkdir -p ~/.config/colorls
ln -s -f $(pwd)/colorls/dark_colors.yaml ~/.config/colorls/dark_colors.yaml  
ln -s -f $(pwd)/colorls/files.yaml ~/.config/colorls/files.yaml  