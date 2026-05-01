<div align="center">

# 🧊 Dotfiles

**Arch Linux + Hyprland Setup**

<img src="https://img.shields.io/badge/Arch-Linux-blue?style=for-the-badge&logo=archlinux">
<img src="https://img.shields.io/badge/Hyprland-Wayland-purple?style=for-the-badge">
<img src="https://img.shields.io/github/stars/bitnerry/dotfiles?style=for-the-badge">

<br><br>

<a href="#installation"><kbd> <br> Installation <br> </kbd></a>&ensp;
<a href="#setup"><kbd> <br> Setup <br> </kbd></a>&ensp;
<a href="#structure"><kbd> <br> Structure <br> </kbd></a>&ensp;
<a href="#features"><kbd> <br> Features <br> </kbd></a>&ensp;
<a href="#notes"><kbd> <br> Notes <br> </kbd></a>

</div>

---

## 🧰 Overview

Personal Hyprland rice with:

- Waybar (status bar)
- Alacritty (terminal)
- Wofi (launcher)
- Pywal (dynamic colors)
- awww (wallpaper daemon)

---

<a id="installation"></a>

## ⚙️ Installation

Minimal Arch install recommended.

```bash
sudo pacman -S --needed git base-devel
git clone https://github.com/bitnerry/dotfiles.git
cd dotfiles
chmod +x setup.sh
./setup.sh
