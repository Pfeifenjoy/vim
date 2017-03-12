call plug#begin('~/.config/nvim/plugged')

"completion
Plug 'Shougo/neocomplete.vim'
Plug 'artur-shaik/vim-javacomplete2'

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
Plug 'tomasr/molokai'
Plug 'eugen0329/vim-esearch'
Plug 'terryma/vim-multiple-cursors'
Plug 'keith/swift.vim'
Plug 'rizzatti/dash.vim'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
"snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

if !empty(glob("~/Development/vim/setlx-syntax"))
    Plug '~/Development/vim/setlx-syntax'
else
    Plug 'Pfeifenjoy/setlx-syntax'
endif

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
if empty(glob("~/.vimundo"))
    call mkdir("~/.vimundo")
endif
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
set backspace=indent,eol,start

filetype plugin indent on
syntax on
colorscheme molokai

"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" Ctrl-P
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1


"Gundo Toggle
nnoremap <F5> :GundoToggle<CR>

source ~/.vim/neocomplete.vim

