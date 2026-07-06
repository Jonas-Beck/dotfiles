[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load custom configurations
ZSH_CONFIG_DIR="${HOME}/.config/zsh"

# Source all configuration files
[[ -f "$ZSH_CONFIG_DIR/exports.zsh" ]] && source "$ZSH_CONFIG_DIR/exports.zsh"
[[ -f "$ZSH_CONFIG_DIR/aliases.zsh" ]] && source "$ZSH_CONFIG_DIR/aliases.zsh"
[[ -f "$ZSH_CONFIG_DIR/functions.zsh" ]] && source "$ZSH_CONFIG_DIR/functions.zsh"
[[ -f "$ZSH_CONFIG_DIR/tools.zsh" ]] && source "$ZSH_CONFIG_DIR/tools.zsh"
