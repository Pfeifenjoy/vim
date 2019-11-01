call plug#begin('~/.vim/plugged')

"completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }

"Conceal
"Plug 'discoloda/c-conceal'
Plug 'ehamberg/vim-cute-python'
Plug 'pangloss/vim-javascript'

Plug 'junegunn/vim-emoji'
Plug 'flowtype/vim-flow'
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
Plug 'mikelue/vim-maven-plugin'

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
"set clipboard=unnamed
set showcmd
set list
set listchars=tab:▸\ ,trail:·,eol:¬
set tabstop=4 shiftwidth=4 expandtab
set noexpandtab
set relativenumber
set number
set laststatus=2
set t_Co=256
set backspace=indent,eol,start

filetype plugin indent on
syntax on
colorscheme molokai

"UltiSnips
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" Ctrl-P
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1


"Gundo Toggle
nnoremap <F5> :GundoToggle<CR>

let g:syntastic_error_symbol = emoji#for('boom')
let g:syntastic_warning_symbol = emoji#for('scream')
set completefunc=emoji#complete

"source ~/.vim/neocomplete.vim
source ~/.vim/abbreviations.vim
source ~/.vim/mappings.vim
source ~/.vim/visual-at.vim
source ~/.vim/ycm.vim
