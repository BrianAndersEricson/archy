echo "Allow updating of timezone by right-clicking on the clock (or running archy-cmd-tzupdate)"
if ! command -v tzupdate &>/dev/null; then
  bash ~/.local/share/omarchy/install/config/timezones.sh
  archy-refresh-waybar
fi
