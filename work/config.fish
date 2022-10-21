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
<<<<<<<< HEAD:personal/config.fish
alias save_dots="brew bundle dump --describe --all --global --force && cd ~/.dotfiles && git pull && git add . && git commit -m 'dotfiles save' && git push"
========
alias save_dots="brew bundle dump --describe --all --global --force && cd ~/.dotfiles && git add . && git commit -m 'dotfiles save' && git push"

# ----------- React Native ------
# Android sdk tools
set -g ANDROID_HOME $HOME/Library/Android/sdk
set -g ANDROID_SDK_ROOT $HOME/Library/Android/sdk
fish_add_path $ANDROID_HOME/tools
fish_add_path $ANDROID_HOME/tools/bin
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools
>>>>>>>> 54a7da8 (update separating to /work dir):work/config.fish
