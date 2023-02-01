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

Backup the $HOME/.config/tmux directory and create a symlink to the dotfiles/.config/tmux directory

```
cd $HOME/.config
mv tmux tmux_BACKUP
ln -s <dotfiles_path>/.config/tmux tmux
```

### Start Tmux and type ` + I key to install the plugins

## Install Neovim

```
brew install neovim
```

### Set Neovim configuration directory

Backup the $HOME/.config/nvim directory and create a symlink to point to dotfiles/.config/nvim.

```
cd $HOME/.config
mv nvim nvim_BACKUP
ln -s <dotfiles_path>/.config/nvim nvim
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
