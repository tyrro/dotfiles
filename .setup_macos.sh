#!/bin/bash

set -e

echo "🔧 Starting macOS setup..."

### SYSTEM PREFERENCES ###
echo "⚙️  Configuring macOS defaults..."

# Dock settings
defaults write com.apple.dock orientation -string "left"                          # Dock on the left
defaults write com.apple.dock autohide -bool true                                 # Auto-hide Dock
defaults write com.apple.dock autohide-delay -float 0                             # No delay on hide/show
defaults write com.apple.dock tilesize -int 24                                    # Reduce icon size
defaults write com.apple.dock mru-spaces -bool false                              # Disable Space auto-rearrange
defaults write com.apple.dock expose-animation-duration -float 0.1                # Speed up Mission Control

# Disable natural scrolling for both mouse and trackpad
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
defaults write com.apple.swipescrolldirection -bool false

# Enable tap to click for the current user
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Finder settings
defaults write NSGlobalDomain AppleShowAllExtensions -bool true                   # Show file extensions
defaults write com.apple.finder AppleShowAllFiles -bool true                      # Show hidden files
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder NewWindowTarget -string "PfLo"                    # Open Finder in home
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"               # List view
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true                # Show full path in title

# Screenshot location
mkdir -p "${HOME}/Screenshots"
defaults write com.apple.screencapture location -string "${HOME}/Screenshots"

# Apply UI changes
killall Dock
killall Finder
killall SystemUIServer

echo "✅ macOS preferences configured."

### HOMEBREW INSTALLATION ###
if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "✅ Homebrew already installed."
fi

### HOMEBREW PACKAGES ###
echo "📦 Installing essential CLI tools and apps from ~/.Brewfile"

if [ ! -f ~/.Brewfile ]; then
  echo "❌ ~/.Brewfile not found. Please create it with your desired packages."
  exit 1
fi

brew bundle --file ~/.Brewfile --verbose

echo "✅ All packages installed."

echo "🎉 macOS setup complete!"
