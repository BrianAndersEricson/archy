#!/bin/bash

# Use dark mode for QT apps too (like kdenlive)
if ! yay -Q kvantum-qt5 &>/dev/null; then
  yay -S --noconfirm kvantum-qt5
fi

# Prefer dark mode everything
if ! yay -Q gnome-themes-extra &>/dev/null; then
  yay -S --noconfirm gnome-themes-extra # Adds Adwaita-dark theme
fi

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

# Copy themes instead of symlinking
mkdir -p ~/.config/omarchy/themes
cp -r ~/.local/share/omarchy/themes/* ~/.config/omarchy/themes/

# Set initial theme by copying
mkdir -p ~/.config/omarchy/current/theme
cp -r ~/.config/omarchy/themes/tokyo-night/* ~/.config/omarchy/current/theme/
cp ~/.config/omarchy/current/theme/backgrounds/1-scenery-pink-lakeside-sunset-lake-landscape-scenic-panorama-7680x3215-144.png ~/.config/omarchy/current/background
echo "~/.config/omarchy/current/theme/backgrounds/1-scenery-pink-lakeside-sunset-lake-landscape-scenic-panorama-7680x3215-144.png" > ~/.config/omarchy/current/.background-state

# Copy specific app configs for current theme
cp ~/.config/omarchy/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua

mkdir -p ~/.config/btop/themes
cp ~/.config/omarchy/current/theme/btop.theme ~/.config/btop/themes/current.theme

mkdir -p ~/.config/mako
cp ~/.config/omarchy/current/theme/mako.ini ~/.config/mako/config
