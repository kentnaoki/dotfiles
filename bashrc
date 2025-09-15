# List files
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Git
alias gs='git status'
alias ga='git add .'
alias gm='git commit -m'
alias gmb='git commit -m $(git symbolic-ref --short HEAD)'
alias gd='git diff'
alias gps='git push origin $(git rev-parse --abbrev-ref HEAD)'
alias gpl='git pull origin'
alias gc='git checkout'
alias gl='git log --pretty=oneline --graph --decorate --all'

# Python
alias venv='source .venv/bin/activate'
alias uvi='uvicorn app.main:app --port'

# K8s
alias kc='kubectl'
alias kcgp='kubectl get pods'

# Terraform
alias tf='terraform'

# History length
HISTSIZE=1000
HISTFILESIZE=2000
