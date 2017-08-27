" Vundle
call plug#begin('~/.vim/bundle')

" my vundles
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|node_modules$\|target',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
Plug 'majutsushi/tagbar'
Plug 'vimwiki/vimwiki'
Plug 'cohama/lexima.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'Yggdroot/indentLine'
let g:indentLine_noConcealCursor=1
" colorschema
Plug 'altercation/vim-colors-solarized'
" completion
Plug 'Valloric/YouCompleteMe'
" ./install.py --all
let g:ycm_semantic_triggers = {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_filetype_specific_completion_to_disable = {
  \ 'javascript': 1,
  \ 'gitcommit': 1,
  \ }
" conflict with ultisnips
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'

Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
" Plug 'sjl/gundo.vim'

Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_java_checkers = []
let g:syntastic_javascript_checkers = ['eslint']

Plug 'fatih/vim-go', { 'for': 'go' }
let g:go_auto_type_info = 1

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'jinja2' }
Plug 'pearofducks/ansible-vim', {'for': 'ansible' }
Plug 'vim-scripts/dbext.vim', {'for': 'sql'}

call plug#end()

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>b :TagbarToggle<CR>
colorscheme solarized
