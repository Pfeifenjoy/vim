call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/neocomplete.vim'
Plug 'sjl/gundo.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline' 
Plug 'mattn/emmet-vim'
Plug 'sjl/gundo.vim'
Plug 'mhinz/vim-startify'
Plug 'kien/ctrlp.vim'
Plug 'jrozner/vim-antlr'
Plug 'easymotion/vim-easymotion'
Plug 'tfnico/vim-gradle'
Plug 'mustache/vim-mustache-handlebars'
Plug 'digitaltoad/vim-jade'
Plug 'groenewege/vim-less'
Plug 'dhruvasagar/vim-table-mode'
Plug 'editorconfig/editorconfig-vim'
Plug 'shirk/vim-gas'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'tomasr/molokai'
Plug 'eugen0329/vim-esearch'
Plug 'floobits/floobits-neovim'
Plug 'terryma/vim-multiple-cursors'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'keith/swift.vim'
Plug 'rizzatti/dash.vim'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-commentary'
Plug 'flowtype/vim-flow', { 'do': 'npm install -g flow-bin' }
Plug 'pangloss/vim-javascript'

call plug#end()

"General Settings
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set hlsearch
set incsearch
set ignorecase
set ruler
set background=dark
set mouse=a
set spelllang=de
set laststatus=2
set laststatus=2
set lazyredraw 
set undofile
set undodir=~/.vimundo
set clipboard=unnamed
set showcmd
set list
set listchars=tab:▸\ ,trail:·,eol:¬
set relativenumber
set number
set laststatus=2
set t_Co=256
filetype plugin indent on
syntax on
colorscheme molokai

"Snipmate
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>


let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


"JSX Syntax options
let g:jsx_ext_required = 0

" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1


" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
"set completeopt=menuone
let g:syntastic_javascript_checkers = ['eslint']

"Gundo Toggle
nnoremap <F5> :GundoToggle<CR>
