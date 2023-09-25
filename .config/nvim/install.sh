#!/bin/bash

apt install ninja-build gettext cmake make unzip curl git sudo npm -y 

git clone --depth 1 --branch stable https://github.com/neovim/neovim ~/Downloads/neovim
cd ~/Downloads/neovim &&  make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
