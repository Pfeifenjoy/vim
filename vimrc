scriptencoding utf-8

call plug#begin('~/.vim/plugged')

"completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
Plug 'justinmk/vim-syntax-extra'
Plug '1995parham/vim-zimpl'
Plug 'rightson/vim-p4-syntax'
Plug 'mustache/vim-mustache-handlebars'

" Other
Plug 'mhinz/vim-startify' " Start screen
Plug 'junegunn/vim-emoji' " Show emoji's while typing
Plug 'tpope/vim-surround' " better selections e.g. for html tags
Plug 'tpope/vim-fugitive' " Git support
Plug 'mbbill/undotree'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'dhruvasagar/vim-table-mode'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-highlightedyank'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ledger/vim-ledger'
Plug 'puremourning/vimspector'
Plug 'sjl/gundo.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'instant-markdown/vim-instant-markdown', { 'do': 'npm -g install instant-markdown-d' }
Plug 'will133/vim-dirdiff'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --frozen-lockfile --production',
  \ 'branch': 'release/0.x'
  \ }

" Themes
Plug 'tomasr/molokai'

"snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug '/apollo/env/envImprovement/vim/amazon/brazil-config'

Plug '/apollo/env/envImprovement/vim/amazon/brazil-config'


if !empty(glob("~/Development/vim/setlx-syntax"))
    Plug '~/Development/vim/setlx-syntax'
else
    Plug 'Pfeifenjoy/setlx-syntax'
endif

call plug#end()

let g:coc_global_extensions = [
	\ 'coc-html',
	\ 'coc-tsserver',
	\ 'coc-sql',
	\ 'coc-sh',
	\ 'coc-pyright',
	\ 'coc-markdownlint',
	\ 'coc-json',
	\ 'coc-java',
	\ 'coc-java-debug',
	\ 'coc-css',
	\ 'coc-cmake',
	\ 'coc-clangd',
	\ 'coc-angular',
	\ 'coc-eslint',
	\ 'coc-docker',
	\ 'coc-git',
	\ 'coc-ltex',
	\ 'coc-prettier',
	\ 'coc-spell-checker',
	\ 'coc-swagger',
	\ 'coc-svg',
	\ 'coc-texlab',
	\ 'coc-vimlsp',
	\ 'coc-xml',
	\ 'coc-yaml',
	\ 'coc-snippets'
\ ]

"General Settings
set nocompatible
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
set encoding=utf-8

filetype plugin indent on
syntax on
colorscheme molokai

"Latex
let g:tex_flavor = "latex"

" Ctrl-P
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"Gundo Toggle
nnoremap <F5> :UndotreeToggle<CR><C-W>h<C-W>k

" netrw (File Browser)
let g:netrw_banner=0
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

"rebind leader key
let mapleader = ","


" easier indentation
vnoremap < <gv
vnoremap > >gv

" highlight 80 character line
set colorcolumn=140

" Vimspector

let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]
let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval<CR>
nmap <leader>dw :VimspectorWatch<CR>
nmap <leader>do :VimspectorShowOutput<CR>

source ~/.vim/abbreviations.vim
source ~/.vim/visual-at.vim

"seems to get overwritten
set noexpandtab

set bdir-=.
set bdir+=/tmp

set dir-=.
set dir+=/tmp

nnoremap <silent> <Leader>f :Ag<CR>

let b:ale_linters = ['flake8', 'mypy']
let g:ale_python_auto_pipenv= 1

" Vimspector
let g:vimspector_enable_mappings = 'HUMAN'

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>qf <Plug>(coc-fix-current)
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
set tagfunc=CocTagFunc

nnoremap <leader>u :UndotreeToggle<CR>

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
