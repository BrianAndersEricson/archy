echo "Set a default fontconfig"

if [[ ! -f "$HOME/.config/fontconfig/fonts.conf" ]]; then
  mkdir -p ~/.config/fontconfig
  cp ~/.local/share/archy/config/fontconfig/fonts.conf ~/.config/fontconfig/
  fc-cache -fv
fi
