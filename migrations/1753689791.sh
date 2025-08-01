echo "Add the new ristretto theme as an option"

if [[ ! -d ~/.config/archy/themes/ristretto ]]; then
  mkdir -p ~/.config/archy/themes/
  cp -r ~/.local/share/archy/themes/ristretto ~/.config/archy/themes/
fi
