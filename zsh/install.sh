#!/bin/zsh

# Install zsh
echo "[-] Installing zsh [-]"
sudo apt install zsh

# Make zsh your default shell
echo "[-] Configuring zsh as your default shell [-]"
# Configure start-up environment vars
ln -s $(pwd)/zshenv $HOME/.zshenv
# Configure zsh 
MY_ZSH_CONFIG_PATH=$XDG_CONFIG_HOME/zsh
mkdir -p $MY_ZSH_CONFIG_PATH
ln -s $(pwd)/zshrc         $MY_ZSH_CONFIG_PATH/.zshrc        # Main config file
ln -s $(pwd)/zsh-prompt    $MY_ZSH_CONFIG_PATH/zsh-prompt    # Prompt config
ln -s $(pwd)/zsh-aliases   $MY_ZSH_CONFIG_PATH/zsh-aliases   # Aliases config
ln -s $(pwd)/zsh-exports   $MY_ZSH_CONFIG_PATH/zsh-exports   # Exports config
ln -s $(pwd)/zsh-vim-mode  $MY_ZSH_CONFIG_PATH/zsh-vim-mode  # Vim-like behavior
ln -s $(pwd)/zsh-functions $MY_ZSH_CONFIG_PATH/zsh-functions # Minimal manager
ln -s $(pwd)/completion    $MY_ZSH_CONFIG_PATH/completion    
chsh -s $(which zsh)

# Installing extra programs 
echo "[-] Installing programs for enhanced experience [-]"
sudo apt install ranger zoxide fnm ncdu
