call plug#begin('~/.vim/plugged')

"completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'flowtype/vim-flow'

"syntax
Plug 'groenewege/vim-less'
Plug 'leafgarland/typescript-vim'
Plug 'keith/swift.vim'
Plug 'jrozner/vim-antlr'
Plug 'tfnico/vim-gradle'
Plug 'digitaltoad/vim-jade'
Plug 'pangloss/vim-javascript'
Plug 'shirk/vim-gas'
Plug 'vim-scripts/alex.vim'
Plug 'w0rp/ale'
Plug 'justinmk/vim-syntax-extra'
Plug '1995parham/vim-zimpl'
Plug 'rightson/vim-p4-syntax'

"Conceal
Plug 'discoloda/c-conceal'
Plug 'ehamberg/vim-cute-python'

" Other
Plug 'junegunn/vim-emoji'
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
Plug 'easymotion/vim-easymotion'
Plug 'mustache/vim-mustache-handlebars'
Plug 'dhruvasagar/vim-table-mode'
Plug 'editorconfig/editorconfig-vim'
Plug 'tomasr/molokai'
Plug 'eugen0329/vim-esearch'
Plug 'terryma/vim-multiple-cursors'
Plug 'rizzatti/dash.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'mikelue/vim-maven-plugin'
Plug 'machakann/vim-highlightedyank'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ledger/vim-ledger'

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
set tabstop=4 shiftwidth=4
set relativenumber
set number
set laststatus=2
set t_Co=256
set backspace=indent,eol,start
set autoindent

filetype plugin indent on
syntax on
colorscheme molokai

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"Ultisnops Settings
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

"Latex
let g:tex_flavor = "latex"

" Ctrl-P
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1
let g:syntastic_error_symbol = emoji#for('boom')
let g:syntastic_warning_symbol = emoji#for('scream')
let g:syntastic_python_python_exec = 'usr/bin/python3'

"Gundo Toggle
nnoremap <F5> :GundoToggle<CR>

source ~/.vim/abbreviations.vim
source ~/.vim/mappings.vim
source ~/.vim/visual-at.vim
source ~/.vim/ycm.vim

"seems to get overwritten
set noexpandtab
