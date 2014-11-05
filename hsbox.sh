#!/usr/bin/env bash

APPNAME='haskell'

sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
apt-get update
apt-get install -y git build-essential haskell-platform

if [ ! -d "/home/vagrant/.dotfiles" ]; then
  sudo -u vagrant -i git clone https://github.com/ptrr/dotfiles.git /home/vagrant/.dotfiles
  sudo -u vagrant -i /home/vagrant/.dotfiles/script/install
fi

sudo -u vagrant -i cabal update


