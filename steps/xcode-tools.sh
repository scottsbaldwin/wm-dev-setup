#!/bin/sh

DMG=command_line_tools_os_x_mountain_lion_for_xcode__october_2013.dmg
if [[ -f "$DMG" ]]
then
  hdiutil attach $DMG
  sudo installer -verbose -pkg "/Volumes/Command Line Tools (Mountain Lion)/Command Line Tools (Mountain Lion).mpkg" -target /
  hdiutil detach "/Volumes/Command Line Tools (Mountain Lion)"
else
  echo "Couldn't setup Xcode command line tools. File not found: ${DMG}"
fi
