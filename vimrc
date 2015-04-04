set tabstop=4
set shiftwidth=4
set showmatch
set hlsearch
set incsearch
set ignorecase
set ruler
set background=dark
set mouse=a
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

nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
inoremap {<cr> {<cr>}<c-o>O<tab>
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
