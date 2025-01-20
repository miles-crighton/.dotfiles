#!/usr/bin/env bash -x
if [ ! $(command -v brew) ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Get packages & casks
xargs brew install < packages.txt
xargs brew install --cask < casks.txt
