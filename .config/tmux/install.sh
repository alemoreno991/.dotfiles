#!/bin/bash

# Make sure that you have this programs installed
sudo apt install git -y

# Installation 
sudo apt install tmux -y
# Install Tmux Package Manager (TPM)
if [[ -z "${XDG_CONFIG_HOME}" ]]; then
  export XDG_CONFIG_HOME="$HOME/.config"
fi

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

