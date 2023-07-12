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

# pnpm
export PNPM_HOME="/Users/milescrighton/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
