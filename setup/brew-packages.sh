#!/usr/bin/env bash -x
if [ ! $(command -v brew) ]; then
  echo 'You need to install homebrew first, silly!'
  open "http://brew.sh"
  exit 1
fi


# Installs
brew install git
    \hub
    \coreutils
    \wget
    \mas
    \mongodb
    \mysql
    \postgresql
    \node
    \gcc
    \bash
    \nvim
    \exa
    \bat
    \fish
    \starship
    \"source-highlight"
