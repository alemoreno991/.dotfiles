#!/bin/bash

# Install alacritty
echo "[-] Installing alacritty as default terminal emulator [-]"
sudo apt install alacritty
# Set alacritty as your default terminal emulator
echo "[-] Setting Alacritty as your default terminal emulator [-]"
sudo update-alternatives --set x-terminal-emulator /usr/bin/alacritty
# Set your personal configurations
mkdir -p $XDG_CONFIG_HOME/alacritty
ln -s $(pwd)/alacritty.yml $XDG_CONFIG_HOME/alacritty/alacritty.yml 

# Installing Nerd Fonts
mkdir -p $HOME/.local/share/fonts/NerdFonts
cd ~/.local/share/fonts/NerdFonts && curl -fLo "Hack Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack

cd ~/.local/share/fonts/NerdFonts && curl -fLo "Hack Bold Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack

cd ~/.local/share/fonts/NerdFonts && curl -fLo "Hack Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack

cd ~/.local/share/fonts/NerdFonts && curl -fLo "Hack BoldItalic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack
