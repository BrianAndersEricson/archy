echo "Add Terminal Text Effects for rizzing Archy"
if ! yay -Qe python-terminaltexteffects &>/dev/null; then
  yay -S --noconfirm --needed python-terminaltexteffects
fi
