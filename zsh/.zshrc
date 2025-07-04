# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set theme for Oh My Zsh
ZSH_THEME="robbyrussell"

# Load plugins (be careful with too many as they can slow down shell startup)
plugins=(
  git                     # Git integration and shortcuts
  zsh-autosuggestions     # Command suggestions based on history
  zsh-syntax-highlighting # Syntax highlighting for commands
)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

#
# ALIASES
#

# System aliases
alias c='clear'                          # Clear terminal
alias zsource='source ~/.zshrc'          # Reload zsh configuration

# Docker aliases
alias d='docker'                         # Docker shorthand
alias dc='docker compose'                # Docker Compose shorthand
alias ld='lazydocker'                    # LazyDocker TUI

# Git aliases
alias lg='lazygit'                       # LazyGit TUI
alias gs='git status'                    # Check git status
alias ga='git add .'                     # Stage all changes
alias gc='git commit -m'                 # Commit with message
alias gp='git push'                      # Push to remote
alias gpl='git pull'                     # Pull from remote
alias glog='git log --oneline --graph --decorate --all' # Pretty git log
alias gch='git checkout'                 # Checkout branch or files
alias gb='git branch'                    # List or manage branches
alias gco='git checkout'                 # Checkout branch or files

# Editor aliases
alias v='nvim'                           # Open Neovim

# Tmux aliases
alias t='tmux -u'                           # Tmux shorthand
alias tsource='tmux source-file ~/.tmux.conf' # Reload tmux configuration

# Initialize zoxide (smart directory jumper) with 'cd' command replacement
eval "$(zoxide init zsh --cmd cd)"

# Auto-start tmux if not already in tmux and not in VS Code
if [[ -z "$TMUX" && "$TERM_PROGRAM" != "vscode" ]]; then
    t new-session -A -s default       # Create or attach to 'default' session
fi
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"
export TERM="xterm-256color"
