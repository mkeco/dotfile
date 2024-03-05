#!/bin/bash

# Clone dotfile repository
git clone https://github.com/mkeco/dotfile.git ~/.config


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/mkzero/.zprofile
source /Users/mkzero/.zprofile

# Install MesloLGM Nerd Font Mono
brew tap homebrew/cask-fonts && brew install --cask font-meslo-lg-nerd-font

# Install software
brew install starship navi lsd fish zed mac-mouse-fix helix mrkai77/cask/loop
brew install --cask alacritty easydict 

echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

