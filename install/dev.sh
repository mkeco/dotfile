#!/bin/bash

# git pull config

git clone --depth 1 https://github.com/mkeco/dotfile.git ~/.config

# 安装必备工具    
sudo dnf install -y fish eza zoxide fd-find gh bat podman curl unzip wget navi helix   

curl https://mise.run | sh


# 切换 shell    
chsh -s $(which fish)

# 安装提示符 
curl -sS https://starship.rs/install.sh | sh

hostnamectl set-hostname --static dev

sudo reboot
