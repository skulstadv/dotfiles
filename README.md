# dotfiles
Dotfiles for vim, tmux and bash

### Installation

    sudo apt-get install xsel && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    git clone https://github.com/skulstadv/dotfiles.git && mv dotfiles ~/.dotfiles && rm ~/.bashrc && ~/.dotfiles/create_symlinks.sh
    sudo apt install build-essential cmake python3-dev
    vim -c PluginInstall
    cd ~/.vim/bundle/YouCompleteMe
    python3 install.py
    vim -c PluginInstall 

### Vim configuration
Make sure you have vim with python3 support
````
vim --version | grep +python3
````
