sources=(
  'aliases'
  'highlight-styles'
  'functions'
)

for s in "${sources[@]}"; do
  source $HOME/.config/zsh/include/${s}.zsh
done

# Load plugins
eval "$(sheldon source)"

# Load prompt
eval "$(starship init zsh)"