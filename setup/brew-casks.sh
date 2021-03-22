#!/usr/bin/env bash -x
if [ ! $(command -v brew) ]; then
  echo 'You need to install homebrew first, silly!'
  open "http://brew.sh"
  exit 1
fi


# Casks (Apps)
brew install cask visual-studio-code
    \mos
    \spotify
    \brave-browser
    \postman
    \iterm2
    \itsycal
    \the-unarchiver
