#!/bin/bash
# 修改镜像源
sed -e 's|^metalink=|#metalink=|g' \
    -e 's|^#baseurl=http://download.example/pub/fedora/linux|baseurl=https://mirrors.tuna.tsinghua.edu.cn/fedora|g' \
    -i.bak \
    /etc/yum.repos.d/fedora.repo \
    /etc/yum.repos.d/fedora-modular.repo \
    /etc/yum.repos.d/fedora-updates.repo \
    /etc/yum.repos.d/fedora-updates-modular.repo

# 切换 shell    
sudo dnf install zsh -y 
chsh -s /bin/zsh
echo "source ~/.config/fedora/.zshrc" >> .zshrc

# 安装必备工具    
sudo dnf install curl btop unzip wget navi helix  -y

# 安装 docker
sudo sh get-docker.sh 

sudo usermod -aG docker $USER

echo "修改docker镜像🇨🇳."

sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl restart docker
sudo sh -c 'cat > /etc/docker/daemon.json <<EOF
{
  "registry-mirrors": [
    "https://docker.mirrors.sjtug.sjtu.edu.cn",
    "https://hub-mirror.c.163.com"
  ]
}
EOF'

# 安装提示符 
curl -sS https://starship.rs/install.sh | sh


# 安装 语言 
sudo dnf install go nodejs -y


