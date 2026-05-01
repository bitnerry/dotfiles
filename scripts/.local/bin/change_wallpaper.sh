#!/bin/bash
WALLPAPER_DIR="$HOME/walli/onlyarch/"
STATE_FILE="$HOME/.cache/wallpaper_index"

# Get sorted list of wallpapers
mapfile -t wallpapers < <(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.bmp" -o -iname "*.gif" \) | sort)

if [ ${#wallpapers[@]} -eq 0 ]; then
  echo "No wallpapers found in $WALLPAPER_DIR"
  exit 1
fi

# Read last index, default to -1
index=$(cat "$STATE_FILE" 2>/dev/null || echo -1)

# Move to next wallpaper, wrap around at the end
index=$(((index + 1) % ${#wallpapers[@]}))

# Save new index
echo "$index" >"$STATE_FILE"

wallpaper="${wallpapers[$index]}"
echo "Applying: $wallpaper ($((index + 1))/${#wallpapers[@]})"

# Run both simultaneously
awww img "$wallpaper" --transition-type fade --transition-duration 1.7 &
wal -i "$wallpaper" -n -q

mkdir -p "$HOME/.config/waybar"
cp "$HOME/.cache/wal/colors-waybar.css" "$HOME/.config/waybar/colors.css"

# Wait for both to finish
wait

# Now reload waybar
pkill -SIGUSR2 waybar
