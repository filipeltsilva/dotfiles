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

message_info "OSX CUSTOM SETTINGS"

. osx_setup/app_store
. osx_setup/dock
. osx_setup/finder
. osx_setup/iterm2
. osx_setup/macos
. osx_setup/time_machine
. osx_setup/transmission

message_okay "OSX CUSTOM SETTINGS FINISHED SUCCESSFULLY"
