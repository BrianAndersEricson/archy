#!/bin/bash

ansi_art=               ▄███████   ▄███████   ▄███████   ▄█   █▄    ▄█   █▄
        ¡÷¡¦÷÷!      	  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
     ÷¡÷÷÷÷÷÷÷÷¡¦    	  ███   ███  ███   ███  ███   █▀   ███   ███  ███   ███
      ¡÷÷÷÷÷÷÷÷÷÷^@ó 	 ▄███▄▄▄███ ▄███▄▄▄██▀  ███       ▄███▄▄▄███▄ ███▄▄▄███
       ÷÷÷÷÷÷÷^¸  zön 	▀███▀▀▀███ ▀███▀▀▀▀    ███      ▀▀███▀▀▀███  ▀▀▀▀▀▀███
    ¢nöní÷÷÷ic¨  ¿ööö 	 ███   ███ ██████████  ███   █▄   ███   ███  ▄██   ███
 Cnööööööísööööööön   	 ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
önööööööööööööööö     	 ███   █▀   ███   ███  ███████▀   ███   █▀    ▀█████▀
öööööööööööööönC        	        ███   █▀
nööööööööööönööò     
öööööööööö   óööö    
öööööööööööön Cöööö  

clear
echo -e "\n$ansi_art\n"

sudo pacman -Sy --noconfirm --needed git

echo -e "\nCloning Archy..."
rm -rf ~/.local/share/omarchy/
# Replace with your repository URL
git clone https://github.com/BrianAndersEricson/archy.git ~/.local/share/omarchy >/dev/null

# Use custom branch if instructed
if [[ -n "$ARCHY_REF" ]]; then
  echo -e "\eUsing branch: $ARCHY_REF"
  cd ~/.local/share/omarchy
  git fetch origin "${ARCHY_REF}" && git checkout "${ARCHY_REF}"
  cd -
fi

echo -e "\nInstallation starting..."
source ~/.local/share/omarchy/install.sh
