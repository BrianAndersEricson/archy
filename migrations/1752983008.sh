if [[ ! -f ~/.local/state/archy/bare.mode ]]; then
  echo "Add missing installation of Zoom"

  if ! command -v zoom &>/dev/null; then
    yay -S --noconfirm --needed zoom
  fi
fi
