set fish_greeting ""

# EDITOR
set EDITOR nvim
set VISUAL nvim

if status is-interactive
end

# alias

# General
alias d="cd"
alias rr="rm -rf"
alias a="exa"
alias aa="exa -la" # See hidden files
alias q="exit"
alias ni="npm install"
alias nd="npm run start"
alias nb="npm run build"

# Git
alias gs="git status --short"
alias gss="git show --word-diff=color"
alias gb='git checkout -b'
alias ga="git add"
alias gf="git log --pretty=oneline --abbrev-commit --graph --decorate"
alias gg="git push"
alias gi="git init"
alias gl="git pull"
alias gn="git clone"
alias gpm="git push origin master"
