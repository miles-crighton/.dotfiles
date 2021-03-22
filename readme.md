## Structure

Primarily broken into two parts, one time setup and evolving config files.

Setup scripts are run on a new machine while .config files are symlinked to their appropriate location.

## Steps for setup

1. Get XCode command line tools: `xcode-select —install`
2. Run `setup/brew.sh`
3. Run `setup/npm.sh`
4. Run `setup/vim.sh`
5. Run `setup/osx.sh` - Run last after all installed and configured
6. Use `./link.sh` to move any config files to required location

## Acknowledgments

Inspiration and parts of code taken from [https://github.com/phette23/dotconfig](https://github.com/phette23/dotconfig) - big thanks to them.
