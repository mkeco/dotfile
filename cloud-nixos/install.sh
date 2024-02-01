#!/bin/bash

# 添加 NixOS unstable channel
nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable nixpkgs
# 更新 channel
nix-channel --update

# 镜像临时

# 为磁盘创建 GPT 分区表
parted /dev/vda -- mklabel gpt 

# 创建根分区,从 512MB 到磁盘末尾
parted /dev/vda -- mkpart root ext4 512MB 100%

# 创建 512MB 的 EFI 系统分区 
parted /dev/vda -- mkpart ESP fat32 1MB 512MB

# 设置第2分区为 EFI system 分区
parted /dev/vda -- set 2 esp on

# 给根分区打上文件系统标签 nixos
mkfs.ext4 -L nixos /dev/vda1

# 给 EFI 分区打上文件系统标签 boot
mkfs.fat -F 32 -n boot /dev/vda2

# 挂载根分区到 /mnt
mount /dev/disk/by-label/nixos /mnt  

# 创建 /mnt/boot 目录
mkdir -p /mnt/boot 

# 挂载 EFI 分区到 /mnt/boot
mount /dev/disk/by-label/boot /mnt/boot

# 生成配置文件
nixos-generate-config --root /mnt 

# 修改配置文件
cp /home/nixos/dotfile/cloud-nixos/configuration.nix  /mnt/etc/nixos/configuration.nix
mkdir -p /mnt/home/mk/.config
cp -r /home/nixos/dotfile/* /mnt/home/mk/.config

nixos-install
