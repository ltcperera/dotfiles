#!/bin/sh
#
# Setup for MacOS platforms
#

echo "Mac OS Setup..."
source scripts/posix-functions.sh

# Install homebrew if not found
if ! is_executable_found brew; then
    echo "Homebrew not found..."
    if is_user_response_yes; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo "Install"
    fi
    echo
fi

# Install Tmux if not found
if ! is_executable_found tmux; then
    echo "Tmux not found..."
    if is_user_response_yes; then
        brew install tmux
    fi
    echo
fi

# Install Neovim if not found
if ! is_executable_found nvim; then
    echo "Neovim not found..."
    if is_user_response_yes; then
        brew install nvim 
    fi
    echo
fi


# Install Exa (https://github.com/ogham/exa)
if ! is_executable_found exa; then
    echo "Cannot find exa utility..."
    if is_user_response_yes; then
        brew install exa
    fi
    echo
fi

# Install Bat (https://github.com/sharkdp/bat)
if ! is_executable_found bat; then
    echo "Cannot find bat utility..."
    if is_user_response_yes; then
        brew install bat
    fi
    echo
fi

# Install fzf (https://github.com/junegunn/fzf)
if ! is_executable_found fzf; then
    echo "Cannot find fzf utility..."
    if is_user_response_yes; then
        brew install fzf
    fi
    echo
fi

# Install items common to all POSIX systems
source scripts/setup-posix.sh
