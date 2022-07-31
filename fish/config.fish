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

# Tide
set -g tide_git_bg_color 268bd2
set -g tide_git_bg_color_unstable C4A000
set -g tide_git_bg_color_urgent CC0000
set -g tide_git_branch_color 000000
set -g tide_git_color_branch 000000
set -g tide_git_color_conflicted 000000
set -g tide_git_color_dirty 000000
set -g tide_git_color_operation 000000
set -g tide_git_color_staged 000000
set -g tide_git_color_stash 000000
set -g tide_git_color_untracked 000000
set -g tide_git_color_upstream 000000
set -g tide_git_conflicted_color 000000
set -g tide_git_dirty_color 000000
set -g tide_git_icon 
set -g tide_git_operation_color 000000
set -g tide_git_staged_color 000000
set -g tide_git_stash_color 000000
set -g tide_git_untracked_color 000000
set -g tide_git_upstream_color 000000

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
