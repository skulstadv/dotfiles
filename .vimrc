" Vundle setup
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins goes here:
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

" YCM config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Spacebar open / close folds
nnoremap <space> za

" Indentation and formatting for text files
set tabstop=4 |
set softtabstop=4 |
set shiftwidth=4 |
set textwidth=140 |
set expandtab |
set autoindent |
set fileformat=unix |
set nonu |
set showcmd |
set encoding=utf-8 |
set hls |
set incsearch

" Indentation and formatting for Python files
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,.vimrc,.bashrc
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set nu |
    \ set showcmd |
    \ set encoding=utf-8 |
    \ set hls |
    \ set incsearch

" Pretty code
let python_highlight_all=1
syntax on
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

" Navigate by visual lines, not actual lines
nnoremap j gj
nnoremap k gk

" Highlight bad whitespace. First specify color
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,.vimrc,.bashrc match BadWhitespace /\s\+$/

" UTF-8 encoding
set encoding=utf-8

" System clipboard
set clipboard=unnamed
set clipboard=unnamedplus

" Virtualenv support using python3
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  exec(compile(open(activate_this, "rb").read(), activate_this, 'exec'), dict(__file__=activate_this))
EOF

" Keep clipboard after exiting vim
autocmd VimLeave * call system("xsel -ib", getreg('+'))
