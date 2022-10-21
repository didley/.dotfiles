# Fish config
set fish_greeting
set fish_vi_key_bindings

set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

# Stairship init
starship init fish | source

# NVM init
function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
nvm use default --silent

# Aliases
alias l="ls -a"
alias v="nvim"
alias save_dots="brew bundle dump --describe --all --global --force && cd ~/.dotfiles && git pull && git add . && git commit -m 'dotfiles save' && git push"
alias upgrade="brew upgrade & mas upgrade && save_dots"