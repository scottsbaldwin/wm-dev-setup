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

# make sure we have a ~/.gitconfig
if [[ -f "~/.gitconfig" ]];
then
  echo "Moving ~/.gitconfig to ~/.gitconfig.bak"
  mv ~/.gitconfig ~/.gitconfig.bak
fi

if [[ -f "~/.gitconfig.local" ]];
then
  echo "Copying ~/.gitconfig.local to ~/.gitconfig"
  mv ~/.gitconfig.local ~/.gitconfig
fi

mkdir -p ${DOTFILES_DIR}
cd ${DOTFILES_DIR}
git clone ${DOTFILES_REPO}

# remove the .gitconfig so that dotfiles can symlink it
if [[ -f "~/.gitconfig" ]];
then
  echo "Moving ~/.gitconfig to ~/.gitconfig.bak.1"
  mv ~/.gitconfig ~/.gitconfig.bak.1
fi

cd ${DOTFILES_DIR}/dotfiles
./bin/install
sh ${DOTFILES_DIR}/dotfiles/bin/vimbundles.sh
