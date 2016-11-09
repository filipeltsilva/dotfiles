#!/usr/bin/env bash

# SCRIPT NAME: osx_setup
# CREATION DATE: 2016-11-08
#
#
# DESCRIPTION: macOS custom configurations
#
# AUTHOR: Filipe Lemos <contato@filipelemos.com>
# AUTHOR URL: filipelemos.com

. install/messages

message_info "OSX CUSTOM CONFIGURATIONS"

message_info "Dock configuration"
defaults write com.apple.dock autohide -bool true && killall Dock
defaults write com.apple.dock autohide-delay -float 0 && killall Dock
defaults write com.apple.dock expose-animation-duration -float 0.10 && killall Dock
defaults write com.apple.dock hide-mirror -bool true && killall Dock
defaults write com.apple.dock mineffect -string "scale" && killall Dock
defaults write com.apple.dock tilesize -int 32 && killall Dock

message_info "Finder configuration"
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true && killall Finder
defaults write com.apple.finder ShowPathbar -bool true && killall Finder
defaults write com.apple.finder ShowStatusBar -bool true &&  killall Finder
defaults write com.apple.finder WarnOnEmptyTrash -bool false && killall Finder

message_info "iTerm2 configuration"
defaults write com.googlecode.iterm2 AllowClipboardAccess -bool true
defaults write com.googlecode.iterm2 "Non Ascii Font" -string "MenloForPowerline-Regular 12"
defaults write com.googlecode.iterm2 "Normal Font" -string "Menlo-Regular 13"
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
open iTerm2/*.itermcolors

message_info "OSX configuration"
defaults write com.apple.screencapture location -string "~/Pictures/Screenshots"
defaults write com.apple.screencapture type jpg && killall SystemUIServer
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

message_okay "OSX CUSTOM CONFIGURATIONS FINISHED SUCCESSFULLY"
