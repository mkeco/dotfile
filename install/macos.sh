#!/bin/bash

# install brew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
 source /Users/mkzero/.zprofile

# .zshrc
# echo "source ~/.config/macos/.zshrc" >> ~/.zshrc

# Install MesloLGM Nerd Font Mono

# Install software
brew install fish starship navi gh fzf curlie   \
btop helix bat eza fd zoxide   
brew install --cask ghostty


