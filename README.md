# dotfiles
Dotfiles for vim, tmux and bash

### Installation

    sudo apt-get install xsel
    git clone git@github.com:skulstadv/dotfiles.git && mv dotfiles ~/.dotfiles && ~/.dotfiles/create_symlinks.sh


### Vim configuration
Make sure you have vim with python3 support
````
vim --version | grep +python3
````
#### YCM install 
````
cd ~/.vim/bundle/YouCompleteMe && ./install.py
````
