# dotfiles
Dotfiles for vim, tmux and bash

### Installation

    sudo apt-get install xsel && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    git clone https://github.com/skulstadv/dotfiles.git && mv dotfiles ~/.dotfiles && ~/.dotfiles/create_symlinks.sh
    vim -c PluginInstall 
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py

### Vim configuration
Make sure you have vim with python3 support
````
vim --version | grep +python3
````
