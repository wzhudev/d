# dotfiles

## Install applications with Homebrew

Install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install packages with Homebrew:

```sh
# install TUI applications
brew install fzf git lazygit cloc tree gh neofetch tmux neovim ripgrep fd
```
## Post setup

Install applications with Homebrew:

```sh
brew install visual-studio-code raycast hammerspoon google-chrome
```

Link the config file of Hammerspoon:

```sh
ln -fs ~/.dotfiles/platforms/mac/hammerspoon/init.lua ~/.hammerspoon/init.lua
```

## Configuration

See "Configuration" section in [linux/README.md](../linux/README.md).
