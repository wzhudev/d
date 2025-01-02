# macOS Setup

Before starting, follow the [WSL Setup Guide](../linux/README.md) to configure shared applications and settings.

## Install Applications with Homerew

Use Homebrew to install the necessary applications:

```sh
brew install git bash
brew install visual-studio-code raycast hammerspoon microsoft-edge ghostty
brew install --cask docker
```

## Configuration

Refer to the "Configuration" section in the [Linux Setup Guide](../linux/README.md) for shared settings.

### Link Configuration Files

Link the configuration files for Hammerspoon and Ghostty:

```sh
ln -fs ~/.dotfiles/config/hammerspoon/init.lua ~/.hammerspoon/init.lua
ln -fs ~/.dotfiles/config/ghostty/config ~/.config/ghostty/config
```
