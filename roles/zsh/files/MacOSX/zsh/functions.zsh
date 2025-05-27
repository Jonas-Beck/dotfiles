# ~/.config/zsh/functions.zsh (Custom functions)

# Function to source .zshrc in all tmux panes
tmux-source-all() {
    if [[ -z "$TMUX" ]]; then
        echo "Not in a tmux session"
        return 1
    fi
    
    echo "Sourcing .zshrc in all tmux panes..."
    tmux list-panes -a -F '#{session_name}:#{window_index}.#{pane_index}' | \
        xargs -I {} tmux send-keys -t {} 'source ~/.zshrc' Enter
    echo "✅ .zshrc sourced in all panes"
}


# Quick aliases for convenience
alias tsr='tmux-source-all'
