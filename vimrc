set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Bundle 'mxw/vim-jsx'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline' 
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'mattn/emmet-vim'
Plugin 'sjl/gundo.vim'
Plugin 'mhinz/vim-startify'
Plugin 'helino/vim-nasm'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'ternjs/tern_for_vim', { 'do': 'npm install' }
call vundle#end()

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
"set spell
set spelllang=de
execute pathogen#infect()
filetype plugin indent on
syntax on

nmap <leader>n :NERDTreeToggle<cr>
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
 set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256
set tabstop=4 shiftwidth=4 expandtab
set relativenumber
set number


map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:tex_flavor='latex'

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


"JSX Syntax options
let g:jsx_ext_required = 0

" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1


" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview


let g:syntastic_javascript_checkers = ['eslint']


" Status bar (airline plugin)
set laststatus=2
set lazyredraw 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tabs = 0

"Latexbox
let g:LatexBox_latexmk_options = "-pvc -pdfps"

"Gundo Toggle
nnoremap <F5> :GundoToggle<CR>

"Tern Javascript helper functions
map <leader>d :TernDef<CR>
map <leader>i :TernDoc<CR>
map <leader>t :TernType<CR>
map <leader>r :TernRefs<CR>
map <leader>c :TernRename<CR>
