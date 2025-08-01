# Archy Installation Guide

## Prerequisites

- Fresh Arch Linux installation
- Internet connection
- Git installed (`sudo pacman -S git`)

## Installation Methods

### Method 1: Direct Installation (Recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/BrianAndersEricson/archy/main/boot.sh | bash
```

### Method 2: Clone and Install

```bash
git clone https://github.com/BrianAndersEricson/archy.git ~/.local/share/archy
cd ~/.local/share/archy
bash install.sh
```

### Method 3: Development Installation

For testing or development purposes:

```bash
git clone https://github.com/BrianAndersEricson/archy.git
cd archy
ARCHY_REF=dev bash boot.sh
```

## Post-Installation

After installation completes:

1. **Reboot your system** when prompted
2. **Login** using the display manager
3. **Customize** your installation:
   - Change theme: `Super + Shift + Ctrl + Space`
   - View keybindings: `Super + K`
   - Access Archy menu: Run `archy` in terminal

## Customization

See `ARCHY-CUSTOMIZATION-GUIDE.md` for detailed customization instructions.

## Updating Your Fork

Before pushing to your repository, update the git remote:

```bash
cd /home/brian/Projects/un-marchied-omarchy
git remote remove origin
git remote add origin https://github.com/BrianAndersEricson/archy.git
git add .
git commit -m "Initial Archy debranding - complete customization"
git push -u origin main
```

## Installation Options

### Bare Installation

For minimal installation without extra apps:

```bash
ARCHY_BARE=1 bash boot.sh
```

### Custom Branch

To install from a specific branch:

```bash
ARCHY_REF=your-branch-name bash boot.sh
```

## Troubleshooting

If installation fails:

1. **Check logs**: The installer will show where it failed
2. **Retry**: Run `bash ~/.local/share/archy/install.sh`
3. **Manual cleanup**: `rm -rf ~/.local/share/archy` and start over

## System Requirements

- **RAM**: 4GB minimum, 8GB recommended
- **Storage**: 10GB free space
- **GPU**: Any GPU supported by Hyprland
- **Network**: Active internet connection for package downloads

## What Gets Installed

- **Desktop**: Hyprland window manager with full configuration
- **Terminal**: Alacritty with custom themes
- **Shell**: Bash with modern CLI tools (eza, bat, fzf, etc.)
- **Development**: Git, Docker, Neovim, Lazygit, Lazydocker
- **System**: Bluetooth, printer support, fingerprint auth
- **Apps**: Chromium, Steam, Discord (web), various utilities

## Notes

- The installation directory remains `~/.local/share/archy` for compatibility
- All Archy-specific commands are prefixed with `archy-`
- Your custom `.bash_aliases` will be automatically loaded
- Themes use direct file copying instead of symlinks for easier customization