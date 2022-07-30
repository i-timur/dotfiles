set -gx TERM xterm-256color

# Man pages
set -Ux MANPAGER "nvim +Man!"

set fish_greeting ""

# EDITOR
set -Ux EDITOR nvim
set -Ux VISUAL nvim

# alias

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

function fish_user_key_bindings
  # bind \c] fzf_ghq      # Ctrl-]
  # bind \cr fzf_history  # Ctrl-r
  # bind \cj fzf_z        # Ctrl-j
  bind \cf fzf_file     # Ctrl-f
end
