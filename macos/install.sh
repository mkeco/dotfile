#!/bin/bash

# Clone dotfile repository

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
source /Users/mkzero/.zprofile

# Install MesloLGM Nerd Font Mono

# Install software
brew install starship navi btop helix 
brew install --cask alacritty 

echo 'eval "$(starship init zsh)"
source "/Users/mkzero/.rye/env"
eval "$(navi widget zsh)"
' >> .zshrc
