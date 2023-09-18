#!/bin/zsh
#############################################################################################
# NOTE: there are a couple of dependencies that you'll need to install 
# before succesfully install LunarVim:
#   - curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash 
#   - nvm install node
#   - nvm install-latest-npm
#   - npm install -g npm
#   - curl https://sh.rustup.rs -sSf | sh
#############################################################################################

# Install LunarVim as indicated in the repository
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
# Set your personal configurations
MY_NVIM_PATH=$XDG_CONFIG_HOME/lvim
mkdir -p $MY_NVIM_PATH
ln -sf $(pwd)/config.lua $MY_NVIM_PATH/config.lua
