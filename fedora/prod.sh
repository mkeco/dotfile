#!/bin/bash

sudo dnf install  helix   -y

curl -fsSL https://get.docker.com -o get-docker.sh

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

sudo systemctl daemon-reload
sudo systemctl restart docker

curl -sS https://starship.rs/install.sh | sh
