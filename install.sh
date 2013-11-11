#!/bin/sh

./steps/xcode-tools.sh
./steps/homebrew.sh
./steps/rvm.sh
./steps/brews.sh

echo "Don't forget to generate an SSH key and add it to your GitHub account!"
echo "You can generate a key with: ./steps/key.sh"
echo "Then, you can also run ./steps.dotfiles.sh to setup your dotfiles"
