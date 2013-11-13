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

# make sure we have a ${HOME}/.gitconfig
if [ -f "${HOME}/.gitconfig" ];
then
  echo "Moving ${HOME}/.gitconfig to ${HOME}/.gitconfig.bak"
  mv ${HOME}/.gitconfig ${HOME}/.gitconfig.bak
fi

if [ -f "${HOME}/.gitconfig.local" ];
then
  echo "Copying ${HOME}/.gitconfig.local to ${HOME}/.gitconfig"
  mv ${HOME}/.gitconfig.local ${HOME}/.gitconfig
fi

mkdir -p ${DOTFILES_DIR}
cd ${DOTFILES_DIR}
git clone ${DOTFILES_REPO}

# remove the .gitconfig so that dotfiles can symlink it
if [ -f "${HOME}/.gitconfig" ];
then
  echo "Moving ${HOME}/.gitconfig to ${HOME}/.gitconfig.bak.1"
  mv ${HOME}/.gitconfig ${HOME}/.gitconfig.bak.1
fi

cd ${DOTFILES_DIR}/dotfiles
./bin/install
sh ${DOTFILES_DIR}/dotfiles/bin/vimbundles.sh
