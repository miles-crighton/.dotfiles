#!/usr/bin/env bash -x
if [ ! $(command -v brew) ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Get packages & casks
xargs brew install < packages.txt
xargs brew install cask < casks.txt

# Add homebrew bash & fish to /etc/shells & use fish
grep '/usr/local/bin/bash' /etc/shells >/dev/null || echo '/usr/local/bin/bash' | sudo tee -a /etc/shells
grep '/usr/local/bin/fish' /etc/shells >/dev/null || echo '/usr/local/bin/fish' | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
