#!/usr/bin/env bash

# set -euxo pipefail

antibody update

brew update
brew upgrade
brew cask upgrade

gem update

sudo npm update -g

cargo update # not working, why?

#pip?

#go?
