#!/bin/bash

# install brew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
source /Users/mkzero/.zprofile

# .zshrc
echo "source ~/.config/macos/.zshrc" >> ~/.zshrc

# Install MesloLGM Nerd Font Mono

# Install software
brew install starship navi fzf curlie zsh-autosuggestions \ 
zsh-syntax-highlighting btop helix yazi zellij node \
 bat eza dog gping koekeishiya/formulae/skhd

brew install --cask alacritty 

