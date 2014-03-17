set nocompatible               " be iMproved

" Vundle
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" my vundles
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'sjbach/lusty'
Bundle 'majutsushi/tagbar'
Bundle 'Raimondi/delimitMate'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'sjl/gundo.vim'
Bundle 'Yggdroot/indentLine'
" colorschema
Bundle 'altercation/vim-colors-solarized'
" filetype
Bundle 'tpope/vim-markdown'
Bundle 'juvenn/mustache.vim'
Bundle 'kchmck/vim-coffee-script'
" completion
Bundle 'Valloric/YouCompleteMe'
" run `npm install`
Bundle "marijnh/tern_for_vim"
Bundle 'honza/vim-snippets'
Bundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<c-j>"
" git
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
" python
Bundle 'hynek/vim-python-pep8-indent'
" ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

" clojure
Bundle 'tpope/vim-fireplace'
Bundle 'guns/vim-clojure-static'
Bundle 'kovisoft/slimv'
Bundle 'kien/rainbow_parentheses.vim'
let g:paredit_electric_return = 0  " clojure favored
autocmd FileType lisp,clojure let b:loaded_delimitMate = 1
autocmd VimEnter * RainbowParenthesesToggle

" go
Bundle 'jnwhiteh/vim-golang'
" go get -v code.google.com/p/rog-go/exp/cmd/godef
Bundle 'dgryski/vim-godef'
" go get -u github.com/nsf/gocode
Bundle 'nsf/gocode', {'rtp': 'vim/'}
" go get github.com/golang/lint/golint
let g:syntastic_go_checkers=['go', 'govet', 'golint']
autocmd FileType go autocmd BufWritePre <buffer> Fmt
" go get -github.com/jstemmer/gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" javascript
Bundle 'pangloss/vim-javascript'
" html
Bundle 'mattn/emmet-vim'
" yaml
Bundle 'chase/vim-ansible-yaml'
Bundle 'saltstack/salt-vim'

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
