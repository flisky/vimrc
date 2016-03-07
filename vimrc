set nocompatible               " be iMproved

" Vundle
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" my vundles
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-obsession'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": [],
        \ "passive_filetypes": ["go"] }
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'sjl/gundo.vim'
Plugin 'Yggdroot/indentLine'
let g:indentLine_noConcealCursor=1
" colorschema
Plugin 'altercation/vim-colors-solarized'
" completion
Plugin 'Valloric/YouCompleteMe'
" ./install.py --clang-completer --omnisharp-completer --gocode-completer \
"     --tern-completer --racer-completer
let g:ycm_server_use_vim_stdout=1
let g:ycm_semantic_triggers = {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
" conflict with ultisnips
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'mattn/emmet-vim'
" git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" python
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'hynek/vim-python-pep8-indent'
let g:syntastic_python_checkers = ['flake8']
" clojure
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-sexp'
Plugin 'kien/rainbow_parentheses.vim'
let g:paredit_electric_return = 0  " clojure favored
autocmd FileType lisp,clojure let b:loaded_delimitMate = 1
autocmd VimEnter * RainbowParenthesesToggle
" go
Plugin 'fatih/vim-go'
" completion goes with YCM
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
" Offical repo is too big
" Plugin 'docker/docker', {'rtp': '/contrib/syntax/vim/'}
Plugin 'ekalinin/Dockerfile.vim'
" js and relatives
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
" template languages
Plugin 'tpope/vim-markdown'
Plugin 'Glench/Vim-Jinja2-Syntax'
" configuration tools
Plugin 'pearofducks/ansible-vim'

call vundle#end()

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
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>b :TagbarToggle<CR>

nnoremap <Up> gk
nnoremap <Down> gj

colorscheme solarized
if has('gui_running')
	set background=light
else
	set background=dark
endif

source ~/.vim/vimrc.local
