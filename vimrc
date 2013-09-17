set nocompatible               " be iMproved

" Vundle
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" my vundles
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'sjbach/lusty'
Bundle 'majutsushi/tagbar'
Bundle 'Raimondi/delimitMate'
Bundle 'terryma/vim-multiple-cursors'
" colorschema
Bundle 'altercation/vim-colors-solarized'
" filetype
Bundle 'tpope/vim-markdown'
Bundle 'juvenn/mustache.vim'
Bundle 'kchmck/vim-coffee-script'
" snipmate
Bundle "MarcWeber/ultisnips"
Bundle "honza/vim-snippets"
" python
Bundle 'hynek/vim-python-pep8-indent'
" ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
" clojure
Bundle 'tpope/vim-fireplace'
Bundle 'guns/vim-clojure-static'
Bundle 'paredit.vim'
let g:paredit_electric_return = 0  " clojure favored
autocmd FileType lisp,clojure let b:loaded_delimitMate = 1
" go
Bundle 'jnwhiteh/vim-golang'
Bundle 'nsf/gocode', {'rtp': 'vim/'}
" javascript
Bundle 'pangloss/vim-javascript'
Bundle 'othree/javascript-libraries-syntax.vim'
" html
Bundle 'mattn/emmet-vim'

filetype plugin indent on

set hidden
set pastetoggle=<F2>
set wildignore=*.pyc,*.swp,*~
set wildmode=longest:list
set undodir^=~/.undodir

set ignorecase smartcase
set incsearch hlsearch
nnoremap <C-L> :nohls<CR><C-L>

set smarttab smartindent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
"autocmd FileType html,css,javascript setlocal ts=2 sts=2 sw=2

let mapleader=" "
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>b :TagbarToggle<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>

nnoremap <Up> gk
nnoremap <Down> gj

colorscheme solarized
if has('gui_running')
	set background=light
else
	set background=dark
endif

source ~/.vim/vimrc.local
