#!/bin/sh

RUBY_VERSION="2.0.0-p247"

# -----------------------------------------------------
# install rvm
# -----------------------------------------------------

\curl -L https://get.rvm.io | bash

# -----------------------------------------------------
# install ruby
# -----------------------------------------------------

rvm get head
rvm autolibs enable
rvm install ${RUBY_VERSION} --with-openssl

source ~/.rvm/scripts/rvm
rvm use ${RUBY_VERSION}
rvm use --default ${RUBY_VERSION}

# make sure we have the latest version of gem and rake
gem update --system
gem install rake
