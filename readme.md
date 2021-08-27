## Structure

Primarily broken into two parts, one time setup and evolving config files.

Setup scripts are run on a new machine while .config files are symlinked to their appropriate location using [GNU stow](https://www.gnu.org/software/stow/).

## Steps for setup on Mac

1. Get XCode command line tools: `xcode-select —install`
2. Run `setup/brew.sh`
3. Run `setup/npm.sh`
4. Run `setup/vim.sh`
5. Run `setup/osx.sh` - Run last after all installed and configured
6. Use `./mac.sh` to symlink dotfiles to required location via stow

## Acknowledgments

Inspiration and parts of code taken from [https://github.com/ThePrimeagen/.dotfiles](https://github.com/ThePrimeagen/.dotfiles) - big thanks to them.
