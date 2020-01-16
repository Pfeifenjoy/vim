call plug#begin('~/.vim/plugged')

"completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'flowtype/vim-flow'

"syntax
Plug 'groenewege/vim-less'
Plug 'leafgarland/typescript-vim'
Plug 'keith/swift.vim'
Plug 'jrozner/vim-antlr'
Plug 'tfnico/vim-gradle'
Plug 'digitaltoad/vim-jade'
Plug 'isruslan/vim-es6'
Plug 'shirk/vim-gas'
Plug 'vim-scripts/alex.vim'
Plug 'w0rp/ale'
Plug 'justinmk/vim-syntax-extra'
Plug '1995parham/vim-zimpl'
Plug 'rightson/vim-p4-syntax'

"Conceal
"Plug 'discoloda/c-conceal'
Plug 'ehamberg/vim-cute-python'

" Other
Plug 'junegunn/vim-emoji'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mustache/vim-mustache-handlebars'
Plug 'dhruvasagar/vim-table-mode'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-highlightedyank'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ledger/vim-ledger'
Plug 'itchyny/lightline.vim'

" Themes
Plug 'tomasr/molokai'

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
set nocompatible
set showmatch
set hlsearch
set incsearch
set ignorecase
set ruler
set background=dark
set mouse=a
set spelllang=de
set lazyredraw 

" Create folder where the history is saved
if empty(glob($HOME."/.vimundo"))
    call mkdir($HOME."/.vimundo")
endif
set undofile
set undodir=~/.vimundo

"set clipboard=unnamed
set showcmd

" show whitespaces
set list
set listchars=tab:▸\ ,trail:·,eol:¬

" set tabstop size
set tabstop=4 shiftwidth=4

set number "enable line numbers
set t_Co=256
set backspace=indent,eol,start
set autoindent

set path+=**
set wildmenu

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
nnoremap <F5> :UndotreeToggle<CR><C-W>h<C-W>k

" netrw (File Browser)
let g:netrw_banner=0
let g:netrw_browser_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()

" status line
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

source ~/.vim/abbreviations.vim
source ~/.vim/mappings.vim
source ~/.vim/visual-at.vim
source ~/.vim/ycm.vim

"seems to get overwritten
set noexpandtab
