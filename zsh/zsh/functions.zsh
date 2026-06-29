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

# Clone a VELUX GitHub repo into ~/Developer/VELUX/ or cd if it exists
clone() {
    if [[ $# -ne 1 ]]; then
        echo "Usage: clone <repo-name>"
        return 1
    fi
    local repo_name="$1"
    local dest_dir="$HOME/Developer/VELUX/$repo_name"
    mkdir -p "$HOME/Developer/VELUX"
    if [[ -d "$dest_dir" ]]; then
        echo "Directory $dest_dir already exists. Switching to it."
        cd "$dest_dir"
    else
        cd "$HOME/Developer/VELUX" || return 1
        gh repo clone "VELUX/$repo_name"
        cd "$dest_dir"
    fi
}
