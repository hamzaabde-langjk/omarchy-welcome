#!/usr/bin/env bash

echo "📦 Setting up Omarchy Welcome..."
echo "Installing dependencies..."
sudo pacman -S foot figlet chafa

AUTOSTART_CONTENT=$(cat autostart.lua)
LOOKFEEL_CONTENT=$(cat lookfeel.lua)
WELCOME_CONTENT=$(cat omarchy-Welcome)

mkdir -p ~/.config/omarchy
mkdir -p ~/.local/bin

echo "$AUTOSTART_CONTENT" > ~/.config/omarchy/autostart.lua
echo "✅ Created ~/.config/omarchy/autostart.lua"

echo "$LOOKFEEL_CONTENT" > ~/.config/omarchy/lookfeel.lua
echo "✅ Created ~/.config/omarchy/lookfeel.lua"

echo "$WELCOME_CONTENT" > ~/.local/bin/omarchy-welcome
chmod +x ~/.local/bin/omarchy-welcome
echo "✅ Created ~/.local/bin/omarchy-welcome"

mkdir -p ~/important_file/
if [ -f frontground.png ]; then
    cp frontground.png ~/important_file/frontground.png
    echo "✅ Copied avatar to ~/important_file/frontground.png"
else
    echo "⚠️  frontground.png not found, skipping avatar"
fi

echo ""
echo "🎉 Setup complete!"
echo "Files installed:"
echo "  ~/.config/omarchy/autostart.lua"
echo "  ~/.config/omarchy/lookfeel.lua"
echo "  ~/.local/bin/omarchy-welcome"
echo ""
echo "To test: ~/.local/bin/omarchy-welcome 'Your Name' 4"
