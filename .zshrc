# Antigen config (ZSH plugin manager)
source /opt/homebrew/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle nvm
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zdharma-continuum/fast-syntax-highlighting

antigen apply

# ZSH Options - https://zsh.sourceforge.io/Doc/Release/Options.html
AUTO_CD="true" # cd command not required to change directory
ENABLE_CORRECTION="true" # command auto-correction

# Alias 
alias tigs="tig status"
alias v="nvim"
alias save_dots="brew bundle dump --describe --global --force && cd ~/.dotfiles && git add . && git commit -m 'dot    files save' && git push"

# Starship init
eval "$(starship init zsh)"
