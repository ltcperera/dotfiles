#!/bin/bash
#
# General setup steps for POSIX platforms
#

source scripts/posix-functions.sh

# Ensure zsh is the shell
if [ "$SHELL" != "/bin/zsh" ]; then
    echo "Please change your shell to zsh and rerun setup."
    exit 1
fi

# Install oh-my-zsh themes and plugins if not installed
if [ ! -d ~/.oh-my-zsh ]; then
    echo "Oh My Zsh not found..."
    if is_user_response_yes; then
        # Install oh-my-zsh
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        # Install Powerlevel10k theme
        git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
        # Install autosuggestions and syntax highlighting plugins
        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    fi
fi
