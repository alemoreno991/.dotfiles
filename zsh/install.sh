#!/bin/zsh

# Install zsh
echo "[-] Installing zsh [-]"
sudo apt install zsh

# Installing extra programs 
echo "[-] Installing programs for enhanced experience [-]"
sudo apt install ranger zoxide ncdu
cd ~/Downloads && curl -fsSL https://fnm.vercel.app/install | bash

# Make zsh your default shell
echo "[-] Configuring zsh as your default shell [-]"
# Configure start-up environment vars
ln -sf $(pwd)/zshenv $HOME/.zshenv
# Configure zsh 
MY_ZSH_CONFIG_PATH=$XDG_CONFIG_HOME/zsh
mkdir -p $MY_ZSH_CONFIG_PATH
ln -sf $(pwd)/zshrc         $MY_ZSH_CONFIG_PATH/.zshrc        # Main config file
ln -sf $(pwd)/zsh-prompt    $MY_ZSH_CONFIG_PATH/zsh-prompt    # Prompt config
ln -sf $(pwd)/zsh-aliases   $MY_ZSH_CONFIG_PATH/zsh-aliases   # Aliases config
ln -sf $(pwd)/zsh-exports   $MY_ZSH_CONFIG_PATH/zsh-exports   # Exports config
ln -sf $(pwd)/zsh-vim-mode  $MY_ZSH_CONFIG_PATH/zsh-vim-mode  # Vim-like behavior
ln -sf $(pwd)/zsh-functions $MY_ZSH_CONFIG_PATH/zsh-functions # Minimal manager
ln -sf $(pwd)/completion    $MY_ZSH_CONFIG_PATH  
chsh -s $(which zsh)
