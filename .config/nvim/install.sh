#!/bin/bash

echo "[-] Install dependencies for neovim [-]"
sudo apt install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config make unzip curl git sudo npm -y 

echo "[-] Install neovim [-]"
git clone --depth 1 --branch stable https://github.com/neovim/neovim ~/Downloads/neovim
cd ~/Downloads/neovim &&  make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

echo "[-] Install neovim's package manager (Packer) [-]"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
