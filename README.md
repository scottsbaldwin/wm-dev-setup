wm-dev-setup
============

WellMatch Developer Setup

# Pre-requisites #

Download Xcode command line tools from <https://developer.apple.com/downloads>. For example, the .dmg file for Mountain Lion is *command_line_tools_os_x_mountain_lion_for_xcode__october_2013.dmg*. If you use a version other than Mountain Lion, update *steps/xcode-tools.sh* and provide the file name you downloaded.

# Installation #

```
$ ./install.sh
```
This script sets up the following:

- **xcode-tools.sh** - Installs the Xcode command line tools needed by homebrew
- **homebrew.sh** - Installs homebrew
- **rvm.sh** - Installs rvm and Ruby 2
- **brews.sh** - Installs brews needed to develop and run WellMatch

This script also gives you a base *.gitconfig.local* file to update with your own GitHub user, name, and email.

# Extras #

## SSH Key ##

Generate an SSH Key for your workstation with:

```
$ ./steps/key.sh
```

Add your *~./ssh/id_rsa.pub* to your GitHub account so that your workstation will have access to your repositories.

When setting up a pairing Mac Mini, this public key needs to be added to the *wellmatchdev* GitHub account.

## dotfiles ##

Setup your dotfiles with:

```
$ ./steps/dotfiles.sh
```

This will copy over the *~/.gitconfig.local* to your *~./gitconfig* so that it can clone the dotfiles repository (see <https://github.com/healthagentech/dotfiles/>).
