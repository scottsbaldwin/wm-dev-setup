#!/bin/sh

# -----------------------------------------------------
# Pre-requisites
# -----------------------------------------------------

# You need a GitHub account that can access the path
# in DOTFILES_REPO.

# -----------------------------------------------------
# Variables
# -----------------------------------------------------

DOTFILES_DIR="${HOME}/wmdev"
DOTFILES_REPO="git@github.com:healthagentech/dotfiles.git"

# -----------------------------------------------------
# dotfiles and vim setup
# -----------------------------------------------------

mkdir -p ${DOTFILES_DIR}
cd ${DOTFILES_DIR}
git clone ${DOTFILES_REPO}
cd ${DOTFILES_DIR}/dotfiles
./bin/install
sh ${DOTFILES_DIR}/dotfiles/bin/vimbundles.sh
