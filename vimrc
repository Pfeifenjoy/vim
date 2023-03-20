scriptencoding utf-8

call plug#begin('~/.vim/plugged')

"completion
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
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
Plug 'w0rp/ale'
Plug 'justinmk/vim-syntax-extra'
Plug '1995parham/vim-zimpl'
Plug 'rightson/vim-p4-syntax'
Plug 'will133/vim-dirdiff'

"Conceal
"Plug 'discoloda/c-conceal'
"Plug 'ehamberg/vim-cute-python'

" Other
Plug 'junegunn/vim-emoji'
"Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
"Plug 'scrooloose/syntastic'
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
Plug 'puremourning/vimspector'
Plug 'sjl/gundo.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Themes
Plug 'tomasr/molokai'

"snippets
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --frozen-lockfile --production',
  \ 'branch': 'release/0.x'
  \ }


if !empty(glob("~/Development/vim/setlx-syntax"))
    Plug '~/Development/vim/setlx-syntax'
else
    Plug 'Pfeifenjoy/setlx-syntax'
endif

call plug#end()

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
"let g:syntastic_check_on_open=1
"let g:syntastic_error_symbol = emoji#for('boom')
"let g:syntastic_warning_symbol = emoji#for('scream')
"let g:syntastic_python_python_exec = 'usr/bin/python3'
"let g:syntastic_python_checkers=['python', 'mypy', 'flake8', 'pylint']
"let syntastic_mode_map = { 'passive_filetypes': ['html'] }

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

" tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" splits
map <Leader>h <c-w>h
map <Leader>j <c-w>j
map <Leader>k <c-w>k
map <Leader>l <c-w>l

" sort
vnoremap <Leader>s :sort<CR>

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
source ~/.vim/mappings.vim
source ~/.vim/visual-at.vim
source ~/.vim/ycm.vim

"seems to get overwritten
set noexpandtab

let g:deoplete#enable_at_startup = 1

set bdir-=.
set bdir+=/tmp

set dir-=.
set dir+=/tmp

nnoremap <silent> <Leader>f :Ag<CR>

let b:ale_linters = ['flake8', 'mypy']
let g:ale_python_auto_pipenv= 1

" Vimspector
let g:vimspector_enable_mappings = 'HUMAN'

function! BrazilWorkspaceRoot()
  let l:working_directory = getcwd()
  let l:workspace_root = split(l:working_directory, "/")[0:4]
  return "/" . join(l:workspace_root, "/")
endfunction

function! BrazilOpenJDKLocation()
  let l:workspace_directory=BrazilWorkspaceRoot()
  let l:jdk_path=""
  if (isdirectory(l:workspace_directory."/env/OpenJDK8-1.1"))
      let l:jdk_path=l:workspace_directory."/env/OpenJDK8-1.1"
  elseif (isdirectory(l:workspace_directory."/env/JDK8-1.0"))
      let l:jdk_path=l:workspace_directory."/env/JDK8-1.0"
  endif
  
  if (empty(l:jdk_path))
    return "/apollo/env/JavaSE11/jdk-11/"
  else
    return l:jdk_path . "/runtime/jdk1.8/"
  endif
endfunction

function! SetBrazilJDKHome()
  let $JDK_HOME=BrazilOpenJDKLocation()
endfunction
call SetBrazilJDKHome()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>qf <Plug>(coc-fix-current)
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
