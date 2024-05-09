#!/bin/bash

# Clone dotfile repository

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/mkzero/.zprofile
source /Users/mkzero/.zprofile

# Install MesloLGM Nerd Font Mono

# Install software
brew install starship navi lsd btop fish zed helix mrkai77/cask/loop oven-sh/bun/bun
brew install --cask alacritty 

echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

