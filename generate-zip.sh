#!/bin/sh

zip -r wm-dev-setup.zip wm-dev-setup -x "*.git*"
zip wm-dev-setup.zip "wm-dev-setup/files/.gitconfig.local"
