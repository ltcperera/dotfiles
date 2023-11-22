#!/bin/bash
echo $SHELL

# Install prerequisites
brew install stow
brew install exa
brew install bat
brew install fzf
brew install npm
brew install fd

# Setup oh-my-zsh and powerline10k
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

