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
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'sjbach/lusty'
Bundle 'mattn/zencoding-vim'
Bundle 'majutsushi/tagbar'
Bundle 'Raimondi/delimitMate'
Bundle 'altercation/vim-colors-solarized'
Bundle 'juvenn/mustache.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'hynek/vim-python-pep8-indent'

filetype plugin indent on

set hidden
set pastetoggle=<F2>
set smarttab smartindent smartcase

set wildignore=*.pyc,*.swp,*~
set wildmode=longest:list
set undodir^=~/.undodir

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType html,css,javascript setlocal ts=2 sts=2 sw=2

let mapleader=" "
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>b :TagbarToggle<CR>
nnoremap <leader>m :CtrlPMixed<CR>

set incsearch hlsearch
nnoremap <C-L> :nohls<CR><C-L>
nnoremap <Up> gk
nnoremap <Down> gj

colorscheme solarized
if has('gui_running')
	set background=light
else
	set background=dark
endif
