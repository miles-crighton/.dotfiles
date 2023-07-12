sources=(
  'aliases'
  'highlight-styles'
  'functions'
)

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