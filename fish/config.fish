set fish_greeting ""

# XDG
set -gx XDG_CONFIG_HOME $HOME/.config

# Terminal
set -gx TERM xterm-256color

# EDITOR
set -gx EDITOR nvim
set -gx VISUAL nvim

# Man pages
set -gx MANPAGER "nvim +Man!"

set -g tide_left_prompt_frame_enabled

# Aliases

# General
alias cl="clear"
alias d="cd"
alias rr="rm -rf"
alias a="exa -l --icons"
alias aa="exa -la" # See hidden files
alias q="exit"
alias ni="npm install"
alias nd="npm run start"
alias nb="npm run build"

# Git
alias gs="git status --short"
alias gss="git show --word-diff=color"
alias gb="git branch"
alias ga="git add"
alias gc="git commit"
alias gl="git log --pretty=oneline --abbrev-commit --graph --decorate"
alias gp="git push"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gi="git init"
alias gl="git pull"
alias gn="git clone"
