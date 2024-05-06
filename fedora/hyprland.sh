#!/bin/bash
# 更换镜像
sudo sed -e 's|^metalink=|#metalink=|g' \
    -e 's|^#baseurl=http://download.example/pub/fedora/linux|baseurl=https://mirrors.tuna.tsinghua.edu.cn/fedora|g' \
    -i.bak \
    /etc/yum.repos.d/fedora.repo \
    /etc/yum.repos.d/fedora-modular.repo \
    /etc/yum.repos.d/fedora-updates.repo \
    /etc/yum.repos.d/fedora-updates-modular.repo
sudo dnf makecache

# install hyprland
sudo dnf copr enable solopasha/hyprland
sudo dnf install hyprland aylurs-gtk-shell swww eww -y
git clone https://github.com/Aylur/dotfiles.git
cp -r dotfiles/ags $HOME/.config/ags

# vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

# install software
sudo dnf install curl flatpak firefox code alacritty btop unzip wget fish go navi lsd helix conda  -y

# 安裝輸入法
sudo dnf install fcitx5 fcitx5-gtk fcitx5-qt fcitx5-configtool fcitx5-rime librime -y

#安裝sddm
sudo dnf install sddm qt6-qt5compa qt6-qtsvg qt6-qtquickcontrols2 -y
sudo git clone https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme --depth=1 
sudo echo "[Theme]
Current=sddm-astronaut-theme" | sudo tee /etc/sddm.conf

# install starship
curl -sS https://starship.rs/install.sh | sh

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
cargo install matugen
# install bun
curl -fsSL https://bun.sh/install | bash

sudo systemctl set-default graphical.target 
chsh -s /usr/bin/fish

sudo reboot


