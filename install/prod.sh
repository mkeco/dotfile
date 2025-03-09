#!/bin/bash

# pull config

git clone --depth 1 https://github.com/mkeco/dotfile.git ~/.config

# install tools 
sudo dnf install -y curl helix   

curl https://mise.run | sh

# activate mise
echo 'eval "$(mise activate bash)"' >> ~/.bashrc

# change hostname
hostnamectl set-hostname --static prod

