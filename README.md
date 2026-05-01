<div align="center">

# 🧊 Dotfiles

**Arch Linux + Hyprland Setup**

<br><br>

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
