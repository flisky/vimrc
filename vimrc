set nocompatible               " be iMproved

filetype plugin indent on

set hidden
set pastetoggle=<F2>
set wildignore=*.pyc,*.swp,*~
set wildmode=longest:list
set undofile
set undodir=~/.undodir

set ignorecase smartcase
set incsearch hlsearch
nnoremap <C-L> :nohls<CR><C-L>

let mapleader=","

nnoremap <Up> gk
nnoremap <Down> gj

if has("nvim")
  source ~/.vim/nvimrc
endif

source ~/.vim/vimrc.local
