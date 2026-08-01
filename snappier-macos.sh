#!/bin/bash

# AppKit window and scroll behavior
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write NSGlobalDomain NSScrollAnimationEnabled -bool false
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
defaults write NSGlobalDomain QLPanelAnimationDuration -float 0

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock mineffect -string scale
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock no-bouncing -bool true

# Finder and Mail
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.Mail DisableSendAnimations -bool true
defaults write com.apple.Mail DisableReplyAnimations -bool true

# Keyboard
defaults write NSGlobalDomain KeyRepeat -int 2
# Leave a little more time before a held key starts repeating.
defaults write NSGlobalDomain InitialKeyRepeat -int 20

# Apply settings for running apps.
killall Dock 2>/dev/null || true
killall Finder 2>/dev/null || true
killall Mail 2>/dev/null || true
