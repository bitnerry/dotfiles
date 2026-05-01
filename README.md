# Dotfiles (Hyprland Setup)

Personal Arch Linux + Hyprland configuration using GNU Stow.

---

## 🧰 Components

* Hyprland (window manager)
* Waybar (status bar)
* Alacritty (terminal)
* Wofi (launcher)
* Pywal (dynamic colors)
* awww (wallpaper daemon)

---

## 📁 Structure

.
├── alacritty/
├── hypr/
├── waybar/
├── wofi/
├── scripts/
├── wallpapers/
└── setup.sh

---

## ⚙️ Setup (Fresh Install)

Clone and run:

git clone https://github.com/bitnerry/dotfiles.git
cd dotfiles
chmod +x setup.sh
./setup.sh

---

## 🧩 Manual Setup (Optional)

Install dependencies manually:

sudo pacman -S hyprland waybar alacritty wofi git stow

Then apply configs:

stow alacritty hypr waybar wofi scripts wallpapers

---

## 🎨 Wallpaper & Colors

* Wallpapers are stored in: ~/walli/onlyarch/
* Script: ~/.local/bin/change_wallpaper.sh
* Uses pywal to generate colors
* Waybar updates automatically

---

## ⚠️ Notes

* Do NOT commit generated files like:

  * ~/.cache/*
  * waybar colors.css
* Uses GNU Stow for symlink management
* Some AUR packages required (installed in setup.sh)

---

## 🚀 Keybind Example

Super + W → Change wallpaper

---

## 📌 TODO

* Improve setup script
* Add screenshots
* Optional: switch to Rofi

---

