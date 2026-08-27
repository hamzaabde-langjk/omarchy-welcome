# 🚀 Omarchy Welcome

A lightweight welcome window that automatically appears on system startup with a personalized greeting message.

## ✨ Features

- **Auto-start** on system login
- **Customizable** welcome message with your name
- **Beautiful display** with gradient colors and ASCII art
- **Avatar support** - shows your profile picture
- **Auto-closes** after a few seconds
- **Lightweight** - minimal resource usage

## 📋 Prerequisites

### Required Packages
- `foot` - Wayland terminal emulator
- `figlet` - ASCII art generator
- `chafa` - Image preview in terminal

### Installation
```bash
# Arch Linux (omarchy)
sudo pacman -S foot figlet chafa


```
<img width="1920" height="1077" alt="Image" src="https://github.com/user-attachments/assets/c36940d4-9622-4bee-afc5-304819b3729b" />
## 📁 Project Structure

```
mans.welcome/
├── autostart.lua          # Autostart configuration
├── lookfeel.lua           # Window appearance settings
├── omarchy-Welcome        # Welcome script
├── frontground.png        # Avatar image (optional)
├── setup.sh              # Installation script
└── README.md             # This file
```

## 🔧 Installation

1. Clone or download the project files
2. Make setup script executable:
```bash
chmod +x setup.sh
```
3. Run the setup:
```bash
./setup.sh
```

The script will:
- Install required dependencies
- Copy files to `~/.config/omarchy/`
- Install welcome script to `~/.local/bin/`
- Setup avatar image

## 🎨 Configuration

### Customize Welcome Message
Edit `~/.local/bin/omarchy-welcome` or run:
```bash
~/.local/bin/omarchy-welcome "Your Name" 5
```

### Change Display Duration
Edit the duration in `autostart.lua`:
```lua
o.launch_on_start(
    "foot --app-id=omarchy-welcome --title='Welcome' -e ~/.local/bin/omarchy-welcome 'Your Name' 4"
)
```
Change `4` to any number (seconds).

### Customize Window Appearance
Edit `~/.config/hypr/lookfeel.lua`:
```lua
o.window("omarchy-welcome", {
    float = true,
    center = true,
    size = "26% 20%",      -- Change window size
    rounding = 14,          -- Change corner rounding
    pin = true,
})
```

### Change Avatar
Place your image at:
```
~/important_file/
```

## 🚀 Usage

### Test the Welcome Script
```bash
~/.local/bin/omarchy-welcome "your name" 4
```

### Manual Launch
```bash
foot --app-id=omarchy-welcome --title='Welcome' -e ~/.local/bin/omarchy-welcome 'Your Name' 4
```

### Check if Autostart is Working
```bash
pgrep -f omarchy-welcome
```

## 🖼️ Customization Examples

### Change Colors
Modify the welcome script colors:
```bash
# In omarchy-welcome
printf '\\e[1;36m'    # Cyan
printf '\\e[2;35m'    # Purple
```

### Change Font
Install different figlet fonts:
```bash
figlist                    # List available fonts
figlet -f standard "Name"  # Change font
```

### Add More Animations
Add to `lookfeel.lua`:
```lua
o.window("omarchy-welcome", {
    float = true,
    center = true,
    size = "26% 20%",
    rounding = 14,
    pin = true,
    
})
```

## 🐛 Troubleshooting

### Welcome Window Not Showing
```bash
# Check if foot is installed
which foot

# Check if welcome script exists
ls -l ~/.local/bin/omarchy-welcome

# Test manually
foot -e ~/.local/bin/omarchy-welcome "Test" 3
```

### Avatar Not Displaying
```bash
# Check if chafa is installed
which chafa

# Check if image exists
ls -l ~/important_file/frontground.png
```

### Autostart Not Working
```bash
# Check autostart files
ls -l ~/.config/autostart/omarchy-welcome.desktop
ls -l ~/.config/omarchy/autostart.lua

# Reload Hyprland
hyprctl reload
```

## 📝 Files Description

| File              | Purpose                            |
| ----------------- | ---------------------------------- |
| `autostart.lua`   | Starts the welcome window on login |
| `lookfeel.lua`    | Defines window appearance          |
| `omarchy-Welcome` | The main welcome script            |
| `frontground.png` | User avatar image                  |
| `setup.sh`        | Installation script                |
| `README.md`       | Documentation                      |

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request



