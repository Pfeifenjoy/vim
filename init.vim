call plug#begin('~/.config/nvim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-javacomplete2'
Plug 'Shougo/neco-vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline' 
Plug 'mattn/emmet-vim'
Plug 'sjl/gundo.vim'
Plug 'mhinz/vim-startify'
Plug 'helino/vim-nasm'
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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'artur-shaik/vim-javacomplete2'
Plug 'keith/swift.vim'
Plug 'rizzatti/dash.vim'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-commentary'
Plug 'flowtype/vim-flow', { 'do': 'npm install -g flow-bin' }
Plug 'pangloss/vim-javascript'

call plug#end()

"deoplete
let g:deoplete#enable_at_startup = 1
autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"General Settings
set tabstop=4
set shiftwidth=4
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
set tabstop=4 shiftwidth=4 expandtab
set relativenumber
set number
filetype plugin indent on
syntax on
colorscheme molokai

"ctrl-p
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"JSX Syntax options
let g:jsx_ext_required = 0

"syntastic
let g:syntastic_check_on_open=1

"Snipmate
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Shortcuts
nnoremap <Space> <leader>
"General
tnoremap <Esc> <C-\><C-n>
nmap <leader>n :Lexplore<cr>
"Gundo Toggle
nnoremap <F5> :GundoToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>

"signify
let g:signify_vcs_list = [ 'git' ]


"import local scripts
source ~/.config/nvim/visual-at.vim
source ~/.config/nvim/abbriviations.vim
source ~/.config/nvim/mappings.vim

