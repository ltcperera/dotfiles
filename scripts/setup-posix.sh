#!/bin/sh
#
# General setup steps for POSIX platforms
#

source scripts/posix-functions.sh

# Ensure zsh is the shell
if [ "$SHELL" != "/bin/zsh" ]; then
    echo "Please change your shell to zsh and rerun setup."
    exit 1
fi

# Install oh-my-zsh if not installed
if [ ! -d ~/.oh-my-zsh ]; then
    echo "Oh My Zsh not found..."
    if is_user_response_yes; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi
fi
