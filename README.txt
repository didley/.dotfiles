Mac Setup Notes

- Install brew - https://brew.sh
- Install Node Version Manager (NVM) (Not recommended to be installed with brew) - https://github.com/nvm-sh/nvm

Setup dotfile steps
- clone this repo to ~/.dotfiles
- delete any pre created dotfiles eg. rm .vimrc
- simlink each dotfile
    $ ln -s ~/.dotfiles/.Brewfile ~/.Brewfile
    $ ln -s ~/.dotfiles/.zshrc ~/.zshrc
    $ ln -s ~/.dotfiles/.vimrc ~/.vimrc
    $ ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
    $ ln -s ~/.dotfiles/config.fish ~/.config/fish/config.fish
    $ ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

Install brewfile casks - $ brew bundle install
Check brew setup correctly - $ brew doctor

Config fish 
 Set as default shell
    $ sudo echo /opt/homebrew/bin/fish >> /etc/shells
    $ chsh -s /opt/homebrew/bin/fish
 
 Set paths
    $ fish_add_path /opt/homebrew/bin
    $ fish_add_path /opt/homebrew/sbin
 
Setup fish with NVM - https://github.com/nvm-sh/nvm#fish
 Install Bass - $ fisher install edc/bass
 Create nvm.fish - $ touch ~/.config/fish/functions/nvm.fish
 Insert to /nvm.fish
    function nvm
        bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
    end


Installs browser extensions
- JSON Formatter
- React dev tools
- Redux dev tools

Other config steps
- setup mongodb to run on startup - $ brew services start mongodb-community
- setup gitHub Cli - $ gh auth login
- dbeaver-community - Turn off always run in background in Prefs

Commands
 update .brewfile    $ brew bundle dump --describe --global --force
 view hidden files   $ ls -a
 move files          $ mv ~/.zshrc ~/dotfiles/
 symlink files       $ ln -s ~/.dotfiles/.vimrc  ~/.vimrc

Save brews & update dotfiles repo (fish alias)
  fish $ save_dots

Guides
 dotfiles - https://www.freecodecamp.org/news/dotfiles-what-is-a-dot-file-and-how-to-create-it-in-mac-and-linux/
 better dotfiles methos (not how above this repo is setup) - https://www.atlassian.com/git/tutorials/dotfiles
 brewfile - https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f
 
