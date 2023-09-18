#!/bin/bash

# Install zsh
echo
echo "[-] Installing zsh [-]"
echo
sudo apt install -y zsh 

# Installing extra programs 
echo
echo "[-] Installing programs for enhanced experience [-]"
echo
sudo apt install -y tree ranger zoxide ncdu
sudo apt install -y curl unzip
# Install fnm
curl -fsSL https://fnm.vercel.app/install | bash
## Install cargo
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup-init.sh && \
#  chmod +x rustup-init.sh && ./rustup-init.sh -y 

# Make zsh your default shell
echo
echo "[-] Configuring zsh as your default shell [-]"
echo
# Configure start-up environment vars
if [[-z "${HOME}"]]; then
  echo "Please provide the path to HOME (e.g. /home/<username>/)"
  read var
  export HOME=$var
else
  ln -sf $(pwd)/.config/zsh/zshenv ${HOME}/.zshenv
fi

# Create the zsh history file
echo
echo "[-] Creating the zsh history file [-]"
echo
mkdir -p $HOME/.local/share/zsh/
