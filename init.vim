call plug#begin('~/.config/nvim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'flowtype/vim-flow' ", { 'do': 'npm install -g flow-bin' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
"Plug 'artur-shaik/vim-javacomplete2'

"Syntax
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

"Themes
Plug 'tomasr/molokai'

"Other
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-fugitive'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'bling/vim-airline' 
"Plug 'mattn/emmet-vim'
"Plug 'eugen0329/vim-esearch'
Plug 'terryma/vim-multiple-cursors'
"Plug 'rizzatti/dash.vim'
Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-commentary'
"Plug 'roxma/vim-tmux-clipboard'

Plug 'sjl/gundo.vim'
Plug 'mhinz/vim-startify'
Plug 'kien/ctrlp.vim'
"Plug 'easymotion/vim-easymotion'
Plug 'dhruvasagar/vim-table-mode'
Plug 'editorconfig/editorconfig-vim'

Plug 'machakann/vim-highlightedyank'
Plug 'gilsondev/searchtasks.vim'
Plug 'ledger/vim-ledger'

call plug#end()

"General Settings
set showmatch
set hlsearch
set incsearch
set ignorecase
set ruler
set background=dark
set mouse=a
set laststatus=2
set laststatus=2
set lazyredraw 
set undofile
set undodir=~/.vimundo
set clipboard=unnamed
set showcmd
set list
set listchars=tab:▸\ ,trail:·,eol:¬
set tabstop=4 shiftwidth=4
set relativenumber
set number
set spelllang=de
filetype plugin indent on
syntax on
colorscheme molokai
"Shortcuts
let mapleader = "-"
nmap <leader>n :Lexplore<cr>

"Gundo Toggle
nnoremap <F5> :GundoToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>

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

"import local scripts
source ~/.config/nvim/visual-at.vim
source ~/.config/nvim/abbriviations.vim
source ~/.config/nvim/split-window.vim
source ~/.config/nvim/ycm.vim
source ~/.config/nvim/ctrl-p.vim

"seems to get overwritten
set noexpandtab

" Only let ctrl-p search directory where vim was started
let g:ctrlp_working_path_mode = 0

" Hide pyc files
let g:netrw_list_hide = '.*\.pyc$'

