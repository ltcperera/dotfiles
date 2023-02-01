# General setup for POSIX platforms

## Setup oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install the Powerlevel10k theme

```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Edit the `.zshrc` in your home directory and change the theme as follows:

```
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Restart your terminal or type the following to configure the powerlevel10k theme:

```
source ~/.zshrc
```

Follow the prompts to setup the theme.

If you don't see the configuration process, or would like to re-run the configuration, use the following command:

```
p10k configure
```

## Install zsh plugins

### Install zsh-autosuggestions:

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Install zsh-syntax-highlighting:

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
