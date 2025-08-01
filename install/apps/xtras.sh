#!/bin/bash

if [ -z "$ARCHY_BARE" ]; then
  yay -S --noconfirm --needed \
    gnome-calculator gnome-keyring \
    libreoffice obs-studio kdenlive \
    xournalpp localsend-bin steam

  # Packages known to be flaky or having key signing issues are run one-by-one
  for pkg in pinta typora librewolf-bin; do
    yay -S --noconfirm --needed "$pkg" ||
      echo -e "\e[31mFailed to install $pkg. Continuing without!\e[0m"
  done

  # 1Password removed - not needed for Archy
fi

# Copy over Archy applications
source ~/.local/share/archy/bin/archy-refresh-applications || true
