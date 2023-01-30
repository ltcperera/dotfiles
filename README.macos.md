# Mac OS Setup

Starting with Mac OS Catalina, the default shell changed to zsh. The
documentation below assumes that the zsh is used.

## Install Command Line Tools (CLT) for Xcode

Many of the tools installed here will require the Command Line Tools (CLT) for
Xcode to be installed. Use the following command to install these tools.

```
xcode-select --install
```

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

## Install Neovim

```
brew install neovim
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
