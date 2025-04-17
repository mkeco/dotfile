#!/bin/bash

sudo dnf install -y fish eza zoxide fd-find gh bat podman curl unzip wget navi helix

sudo echo "$(which fish)" >> /etc/shells
sduo chsh -s $(which fish)

curl https://mise.run | sh
curl -sS https://starship.rs/install.sh | sh

reboot
