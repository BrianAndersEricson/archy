#!/bin/bash

yay -S --noconfirm --needed \
  brightnessctl \
  fcitx5 fcitx5-gtk fcitx5-qt wl-clip-persist \
  nautilus sushi ffmpegthumbnailer \
  slurp satty \
  mpv evince imv \
  chromium

# Audio packages
yay -S --noconfirm --needed \
  playerctl pamixer wiremix wireplumber

# Add screen recorder based on GPU
if lspci | grep -qi 'nvidia'; then
  yay -S --noconfirm --needed wf-recorder
else
  yay -S --noconfirm --needed wl-screenrec
fi
