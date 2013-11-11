#!/bin/sh

sudo mkdir -p /usr/local
sudo chown -R `whoami`:staff /usr/local
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
