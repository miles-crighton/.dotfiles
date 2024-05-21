sources=(
  'aliases'
  'highlight-styles'
  'functions'
)

# Git autocompletion
# https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
autoload -Uz compinit && compinit

setopt HIST_IGNORE_SPACE

for s in "${sources[@]}"; do
  source $HOME/.config/zsh/include/${s}.zsh
done

# Load plugins
eval "$(sheldon source)"

# Load prompt
eval "$(starship init zsh)"

# Set default editor
export EDITOR=nvim
export VISUAL="$EDITOR"

# pnpm
export PNPM_HOME="/Users/milescrighton/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Go
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# opam configuration
[[ ! -r /Users/milescrighton/.opam/opam-init/init.zsh ]] || source /Users/milescrighton/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
