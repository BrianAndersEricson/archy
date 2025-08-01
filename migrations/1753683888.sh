echo "Adding Archy version info to fastfetch"
if ! grep -q "archy" ~/.config/fastfetch/config.jsonc; then
  cp ~/.local/share/archy/config/fastfetch/config.jsonc ~/.config/fastfetch/
fi

