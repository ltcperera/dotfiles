# Mac OS Setup

Starting with Mac OS Catalina, the default shell changed to zsh. The
documentation below assumes that the zsh is used.

## Install Homebrew

Homebrew is a package manager for Mac OS. This tool will be used to install
various packages.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install Tmux

Tmux is a terminal multiplexer used to manage multiple terminal sessions
including split sessions and sharing sessions.

```
brew install tmux
```

### Set Tmux configuration directory

Backup (if needed) and remove the existing $HOME/.config/tmux directory. The 
following stow command will create a symlink to the tmux configuration in this 
repository.

```
stow tmux
```

### Start Tmux and type ` + I key to install the plugins

## Install Neovim

```
brew install neovim
```

### Set Neovim configuration directory

Backup the $HOME/.config/nvim directory if needed and run the following command
to symlink the nvim directory to the one in this repository. 

```
stow nvim
```

## Install Useful Shell Utilities

### Exa, a modern replacement for ls

See https://github.com/ogham/exa for details.

```
brew install exa
```

### Bat, a replacement for the cat command

See https://github.com/sharkdp/bat for details.

```
brew install bat
```

### Command-line Fuzzy Finder (fzf)

See https://github.com/junegunn/fzf for details.

```
brew install fzf
```
