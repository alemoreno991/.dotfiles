#!/bin/bash

# Install dependencies
echo "[-] Installing dependencies for alacritty [-]"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup-init.sh && \
  chmod +x rustup-init.sh && ./rustup-init.sh -y 
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 git -y

# Install alacritty
echo "[-] Installing alacritty as default terminal emulator [-]"
git clone https://github.com/alacritty/alacritty.git
cd alacritty
cargo build --release
cargo build --release --no-default-features --features=x11
sudo cp target/release/alacritty /usr/local/bin

# Set alacritty as your default terminal emulator
echo "[-] Setting Alacritty as your default terminal emulator [-]"
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/alacritty 50
sudo update-alternatives --set x-terminal-emulator /usr/local/bin/alacritty
# Set your personal configurations
if [[ -z "${XDG_CONFIG_HOME}" ]]; then
  export XDG_CONFIG_HOME="$HOME/.config"
fi
mkdir -p $XDG_CONFIG_HOME/alacritty
ln -s $(pwd)/alacritty.yml $XDG_CONFIG_HOME/alacritty/alacritty.yml 

# Installing Nerd Fonts
mkdir -p $HOME/.local/share/fonts/NerdFonts
cd ~/.local/share/fonts/NerdFonts && curl -fLo "Hack Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack

cd ~/.local/share/fonts/NerdFonts && curl -fLo "Hack Bold Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack

cd ~/.local/share/fonts/NerdFonts && curl -fLo "Hack Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack

cd ~/.local/share/fonts/NerdFonts && curl -fLo "Hack BoldItalic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack
