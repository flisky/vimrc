set nocompatible               " be iMproved

" Vundle
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" my vundles
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMRUFiles'
Plugin 'sjbach/lusty'
Plugin 'majutsushi/tagbar'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'sjl/gundo.vim'
Plugin 'Yggdroot/indentLine'
" colorschema
Plugin 'altercation/vim-colors-solarized'
" completion
Plugin 'Valloric/YouCompleteMe'
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
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<c-j>"
Plugin 'mattn/emmet-vim'
" git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" python
Plugin 'hynek/vim-python-pep8-indent'
let g:syntastic_python_checkers = ['flake8']
" ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
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
" js and relatives
Plugin 'pangloss/vim-javascript'
Plugin 'marijnh/tern_for_vim' " run npm update
Plugin 'kchmck/vim-coffee-script'
" rust
Plugin 'wting/rust.vim'
" template languages
Plugin 'tpope/vim-markdown'
Plugin 'juvenn/mustache.vim'
" tool helpers
Plugin 'chase/vim-ansible-yaml'
Plugin 'saltstack/salt-vim'

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
