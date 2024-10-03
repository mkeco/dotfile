#!/bin/bash

# 切换 shell    
sudo dnf install zsh -y 
chsh -s /bin/zsh
echo "source ~/.config/fedora/.zshrc" >> ~/.zshrc

# 安装必备工具    
sudo dnf install curl btop unzip wget navi helix eza  -y

# 安装 docker
sudo sh get-docker.sh --mirror Aliyun

sudo usermod -aG docker $USER

echo "修改docker镜像🇨🇳."

sudo systemctl start docker
sudo systemctl enable docker
sudo sh -c 'cat > /etc/docker/daemon.json <<EOF
{
  "registry-mirrors": [
    "https://2p9p3ypw.mirror.aliyuncs.com"
  ]
}
EOF'

sudo systemctl restart docker
# 安装提示符 
curl -sS https://starship.rs/install.sh | sh


# 安装 语言 
sudo dnf install go -y


