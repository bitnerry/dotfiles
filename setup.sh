#!/bin/bash

set -e

echo "==== Arch + Hyprland Setup Script ===="

# Ask before proceeding

read -p "Proceed with installation? (y/n): " confirm
if [[ $confirm != "y" ]]; then
  echo "Aborted."
  exit 1
fi

echo "==> Updating system..."
sudo pacman -Syu

echo "==> Installing base packages..."
sudo pacman -S --needed
git stow
hyprland waybar alacritty wofi
wl-clipboard grim slurp
brightnessctl playerctl pamixer
networkmanager network-manager-applet
gnome-keyring
ttf-jetbrains-mono-nerd noto-fonts noto-fonts-emoji

# Enable NetworkManager

echo "==> Enabling NetworkManager..."
sudo systemctl enable NetworkManager

# Install yay if not present

if ! command -v yay &>/dev/null; then
  echo "==> Installing yay (AUR helper)..."
  cd ~
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ~
fi

echo "==> Installing AUR packages..."
yay -S --needed awww-git python-pywal brave-bin

# Clone dotfiles

echo "==> Cloning dotfiles..."
cd ~
if [ -d "dotfiles" ]; then
  echo "dotfiles already exist, pulling latest..."
  cd dotfiles
  git pull
else
  git clone https://github.com/bitnerry/dotfiles.git
  cd dotfiles
fi

# Stow configs

echo "==> Applying dotfiles..."
stow alacritty
stow hypr
stow waybar
stow wofi
stow scripts
stow wallpapers

echo "==== Setup Complete ===="
echo "Log out and start Hyprland."
