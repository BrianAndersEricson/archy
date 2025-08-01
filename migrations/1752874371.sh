echo "Add Catppuccin Latte light theme"
if [[ ! -d ~/.config/archy/themes/catppuccin-latte ]]; then
  mkdir -p ~/.config/archy/themes/
  cp -r ~/.local/share/archy/themes/catppuccin-latte ~/.config/archy/themes/
fi
