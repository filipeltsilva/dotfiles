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

sudo -v

message_info "OSX CUSTOM SETTINGS"

. osx_setup/applications
. osx_setup/keyboard
. osx_setup/macos
. osx_setup/trackpad

message_okay "OSX CUSTOM SETTINGS FINISHED SUCCESSFULLY. REBOOT YOUR COMPUTER!"
