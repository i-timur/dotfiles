set -g fish_greeting ""

# XDG
set -gx XDG_CONFIG_HOME $HOME/.config

# Terminal
set -gx TERM xterm-256color

# EDITOR
set -gx EDITOR nvim
set -gx VISUAL nvim

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

# Variables
set -gx ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -gx JAVA_HOME (/usr/libexec/java_home -v17)

# Paths
fish_add_path $HOME/.cargo/bin
fish_add_path $ANDROID_SDK_ROOT/tools/bin
fish_add_path $ANDROID_SDK_ROOT/platform-tools
fish_add_path $ANDROID_SDK_ROOT/emulator

# Man pages
set -gx MANPAGER "nvim +Man!"

# NVM
# IMPORTANT! Default node version has to be set manually
set -U nvm_default_version lts

# The reason for this line is that tmux runs this config when it starts so
# $PATH is always reset. This makes nvm broken because nvm node version is
# placed at the last.
if set -q TMUX
    nvm use system && nvm use $nvm_default_version 
end

# Look up for local node version
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
    status --is-command-substitution; and return

    if test -f .nvmrc; and test -r .nvmrc;
        nvm use
    end
end
# Aliases

# General
alias cl "clear"
alias d "cd"
alias rr "rm -rf"
alias a "exa -l --icons"
alias aa "exa -la --icons" # See hidden files
alias t "exa -la --icons --tree --level="
alias q "exit"
alias ni "npm install"
alias nd "npm run start"
alias nb "npm run build"

# Git
alias gs "git status --short"
alias gss "git show --word-diff=color"
alias gb "git branch"
alias ga "git add"
alias gc "git commit"
alias gl "git log --pretty oneline --abbrev-commit --graph --decorate"
alias gp "git push"
alias gpo "git push origin"
alias gpom "git push origin master"
alias gi "git init"
alias gl "git pull"
alias gn "git clone"

