#!/bin/bash

sudo dnf install curl unzip wget fish navi lsd helix conda  -y

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh 

sudo usermod -aG docker $USER

echo "修改docker镜像🇨🇳."

sudo systemctl start docker
sudo systemctl enable docker
sudo sh -c 'cat > /etc/docker/daemon.json <<EOF
{
  "registry-mirrors": [
    "https://docker.mirrors.sjtug.sjtu.edu.cn",
    "https://hub-mirror.c.163.com"
  ]
}
EOF'

curl -sS https://starship.rs/install.sh | sh

sudo systemctl restart docker
chsh -s /usr/bin/fish
