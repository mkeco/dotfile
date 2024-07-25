#!/bin/bash

# 切换 shell    
sudo dnf install zsh -y 
chsh -s /bin/zsh
echo "source ~/.config/fedora/.zshrc" >> ~/.zshrc

# 安装必备工具    
sudo dnf install curl eza btop unzip navi helix zoxide bat  -y


# 安装提示符 
curl -sS https://starship.rs/install.sh | sh


# 安装 语言 
sudo dnf install go -y


