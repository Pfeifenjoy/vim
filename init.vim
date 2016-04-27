call plug#begin('~/.config/nvim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mxw/vim-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline' 
Plug 'mattn/emmet-vim'
Plug 'sjl/gundo.vim'
Plug 'mhinz/vim-startify'
Plug 'helino/vim-nasm'
Plug 'kien/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'jrozner/vim-antlr'
Plug 'easymotion/vim-easymotion'
Plug 'tfnico/vim-gradle'
Plug 'mustache/vim-mustache-handlebars'
Plug 'digitaltoad/vim-jade'
Plug 'groenewege/vim-less'
Plug 'dhruvasagar/vim-table-mode'
Plug 'editorconfig/editorconfig-vim'
Plug 'shirk/vim-gas'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'pangloss/vim-javascript'
Plug 'SirVer/ultisnips'
Plug 'tomasr/molokai'
call plug#end()

filetype plugin indent on
syntax on
colorscheme molokai

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

let g:tex_flavor='latex'

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

"Snipmate
"imap <c-space> <Plug>snipMateNextOrTrigger
"smap <c-space> <Plug>snipMateNextOrTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"deoplete
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" deoplete tab-complete
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
" ,<Tab> for regular tab
inoremap <Leader><Tab> <Space><Space>
" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

tnoremap <Esc> <C-\><C-n>

set undofile
set undodir=~/.vimundo

function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p
