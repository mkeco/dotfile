#!/bin/bash

sudo dnf install fish go navi lsd neovim conda curl unzip wget -y

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh 

sudo usermod -aG docker $USER

echo "修改docker镜像🇨🇳."

sudo systemctl start docker

sudo sh -c 'cat > /etc/docker/daemon.json <<EOF
{
  "registry-mirrors": [
    "https://docker.mirrors.sjtug.sjtu.edu.cn",
    "https://hub-mirror.c.163.com"
  ]
}
EOF'

sudo systemctl restart docker

curl -sS https://starship.rs/install.sh | sh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl -fsSL https://bun.sh/install | bash
