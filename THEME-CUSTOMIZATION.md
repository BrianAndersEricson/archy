# Archy Theme Customization Guide

## Overview

Archy uses a direct file copying approach (no symlinks) for theme management. All theme files are stored in `~/.config/archy/` and copied directly to application config directories when themes are changed.

## Theme Structure

Each theme is stored in `~/.config/archy/themes/[theme-name]/` with the following structure:

```
theme-name/
├── alacritty.toml          # Terminal colors
├── btop.theme              # System monitor colors  
├── hyprland.conf           # Window manager colors
├── hyprlock.conf           # Lock screen colors
├── mako.ini                # Notification colors
├── neovim.lua              # Editor theme
├── swayosd.css             # OSD styling
├── walker.css              # Application launcher styling
├── waybar.css              # Status bar styling
├── backgrounds/            # Wallpaper images
│   ├── background1.jpg
│   └── background2.png
└── light.mode              # Optional: marks theme as light mode
```

## Current Theme Location

The active theme is stored in:
- `~/.config/archy/current/theme/` - Current theme files
- `~/.config/archy/current/background` - Current wallpaper
- `~/.config/archy/current/.background-state` - Background state tracking

## Creating a Custom Theme

### Method 1: Copy Existing Theme

```bash
# Copy an existing theme as a template
cp -r ~/.config/archy/themes/tokyo-night ~/.config/archy/themes/my-theme

# Edit the theme files
cd ~/.config/archy/themes/my-theme
```

### Method 2: Create from Scratch

```bash
# Create theme directory
mkdir -p ~/.config/archy/themes/my-theme/backgrounds

# Copy template files from another theme or create new ones
# Edit each file with your preferred colors
```

## Applying Your Custom Colors

Your color scheme from COLOR-SCHEME.md:
```json
{
  "background": "#080808",
  "foreground": "#e2e2e2", 
  "cursor": "#b9b9b9",
  "black": "#222222",
  "red": "#db475f",
  "green": "#5f953c",
  "yellow": "#ac7925",
  "blue": "#3d85dc",
  "magenta": "#b250d9",
  "cyan": "#2a9595",
  "white": "#b9b9b9"
}
```

### Alacritty Terminal Colors

Edit `alacritty.toml`:
```toml
[colors.primary]
background = "#080808"
foreground = "#e2e2e2"

[colors.cursor]
text = "#080808"
cursor = "#b9b9b9"

[colors.normal]
black = "#222222"
red = "#db475f"
green = "#5f953c"
yellow = "#ac7925"
blue = "#3d85dc"
magenta = "#b250d9"
cyan = "#2a9595"
white = "#b9b9b9"

[colors.bright]
black = "#525252"
red = "#ed6677"
green = "#6ead47"
yellow = "#c68c2e"
blue = "#5a9bec"
magenta = "#c36ee7"
cyan = "#33acac"
white = "#f1f1f1"
```

### Hyprland Window Manager

Edit `hyprland.conf`:
```bash
general {
    col.active_border = rgba(3d85dcee) rgba(b250d9ee) 45deg
    col.inactive_border = rgba(222222aa)
}

decoration {
    col.shadow = rgba(08080899)
}
```

### Waybar Status Bar

Edit `waybar.css` with your background and foreground colors.

## Theme Commands

### Apply Theme
```bash
archy-theme-set my-theme
```

### Cycle Background
```bash
archy-theme-bg-next
```

### Theme Menu (via Archy)
- Open Archy: `Super + Space`, type "archy"
- Select "Theme" → "Pick"

## Adding Wallpapers

1. Add images to `~/.config/archy/themes/my-theme/backgrounds/`
2. Supported formats: PNG, JPG, WEBP
3. Use `archy-theme-bg-next` to cycle through them

## Tips

1. **Test Changes**: After editing theme files, run `archy-theme-set theme-name` to apply
2. **Backup**: Copy existing themes before modifying them
3. **Consistency**: Use the same color palette across all files for a cohesive look
4. **Light Themes**: Add an empty `light.mode` file for light themes

## Troubleshooting

- **Theme not applying**: Run `hyprctl reload` and restart affected applications
- **Missing backgrounds**: Ensure images are in the `backgrounds/` folder
- **Color issues**: Check that color values are in the correct format for each application