# update .brewfile
brew bundle dump --describe --global --force

# view hidden files
ls -a

# move files
mv ~/.zshrc ~/dotfiles/

# symlink files
ln -s ~/.dotfiles/.vimrc  ~/.vimrc

1. clone dotfiles repo to ~/.dotfiles
2. delete any pre created dotfiles eg. rm .vimrc
3. simlink each dotfile
    ln -s ~/.dotfiles/.Brewfile ~/.Brewfile
    ln -s ~/.dotfiles/.zshrc ~/.zshrc
    ln -s ~/.dotfiles/.vimrc ~/.vimrc
    ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
    ln -s ~/.dotfiles/config.fish ~/.config/fish/config.fish


# dotfile guide https://www.freecodecamp.org/news/dotfiles-what-is-a-dot-file-and-how-to-create-it-in-mac-and-linux/
# Brewfile notes https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f
