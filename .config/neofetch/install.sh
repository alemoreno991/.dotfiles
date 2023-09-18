#!/bin/zsh

#install neofetch
echo "[-] Installing Neofetch [-]"
sudo apt install neofetch

echo "[-] Configuring welcome message [-]"
MY_NEOFETCH_PATH=$XDG_CONFIG_HOME/neofetch
mkdir -p $MY_NEOFETCH_PATH
ln -sf $(pwd)/config.conf $MY_NEOFETCH_PATH/config.conf  
