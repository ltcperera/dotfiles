#!/bin/bash
echo $SHELL

# Install prerequisites
sudo apt install stow
sudo apt install exa
sudo apt install bat
sudo apt install fzf
sudo apt install npm
sudo apt install fd-find

# Setup oh-my-zsh and powerline10k
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


