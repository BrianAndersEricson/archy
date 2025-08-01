echo "Replace volume control GUI with a TUI"

if ! command -v wiremix &>/dev/null; then
  yay -S --noconfirm --needed wiremix
  yay -Rns --noconfirm pavucontrol

  archy-refresh-applications
  archy-refresh-waybar
fi
