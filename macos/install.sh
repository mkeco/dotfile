#!/bin/bash

# Clone dotfile repository
git clone https://github.com/mkeco/dotfile.git ~/.config

# Install MesloLGM Nerd Font Mono
brew tap homebrew/cask-fonts && brew install --cask font-meslo-lg-nerd-font

# Install software
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install starship navi lsd fish zed mac-mouse-fix helix mrkai77/cask/loop
brew install --cask alacritty easydict 

sudo bash -c 'echo "/opt/homebrew/bin/fish" >> /etc/shells'
chsh -s /opt/homebrew/bin/fish

