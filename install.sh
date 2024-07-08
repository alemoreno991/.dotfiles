#!/bin/bash

# Install general dependencies
echo
echo "[-] Installing general dependencies [-]"
echo
sudo apt update && sudo apt upgrade
sudo apt install -y stow git

# Symbolic link my dotfiles to $HOME
stow . --target $HOME

# Install my personal nvim configuration
./.config/nvim/install.sh

# Install my personal nvim configuration
./.config/tmux/install.sh

# Install zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

source $HOME/.bashrc

