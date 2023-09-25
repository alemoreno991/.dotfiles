#!/bin/bash

# Install general dependencies
echo
echo "[-] Installing general dependencies [-]"
echo
sudo apt install -y stow git

# Symbolic link my dotfiles to $HOME
stow . --target $HOME

# Install my personal zsh configuration
./.config/zsh/install.sh

# Install my personal nvim configuration
./.config/nvim/install.sh

# Install my personal nvim configuration
./.config/tmux/install.zsh

# Configure zsh
chsh -s $(which zsh)
# source $ZDOTDIR/.zshrc

