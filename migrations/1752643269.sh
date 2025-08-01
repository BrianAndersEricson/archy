echo "Add new matte black theme"

if [[ ! -d ~/.config/archy/themes/matte-black ]]; then
  mkdir -p ~/.config/archy/themes/
  cp -r ~/.local/share/archy/themes/matte-black ~/.config/archy/themes/
fi
