#!/bin/bash

# 安装必备工具    
sudo dnf install -y fish eza zoxide gh podman curl unzip wget navi helix   

# 安装 语言 
sudo dnf install go -y
curl -LsSf https://astral.sh/uv/install.sh | sh
curl -fsSL https://deno.land/install.sh | sh


# 切换 shell    
chsh -s $(which fish)

# 安装提示符 
curl -sS https://starship.rs/install.sh | sh

sudo reboot
