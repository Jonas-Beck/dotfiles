# ~/.config/zsh/tools.zsh (Tool initializations and integrations)

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)

# Starship prompt
eval "$(starship init zsh)"

# Zoxide (better cd)
eval "$(zoxide init zsh)"

# Direnv (environment management)
eval "$(direnv hook zsh)"

# Mise (runtime management)
eval "$(~/.local/bin/mise activate zsh)"
