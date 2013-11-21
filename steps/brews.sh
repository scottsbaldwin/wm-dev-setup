#!/bin/sh

brew install git wget tmux proctools ack ctags-exuberant markdown reattach-to-user-namespace
brew install imagemagick redis phantomjs

# -----------------------------------------------------
# database
# -----------------------------------------------------

brew install postgresql
initdb /usr/local/var/postgres

echo "alias pgs='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgq='pg_ctl -D /usr/local/var/postgres stop -s -m fast'" >> /Users/${USER}/.bashrc.local

source ${HOME}/.bashrc.local
