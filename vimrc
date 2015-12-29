set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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
set number
autocmd FileType tex setlocal makeprg=pdflatex\ --shell-escape\ '%'

if has('gui_running')
  set grepprg=grep\ -nH\ $*
  let g:tex_flavor='latex'
endif
au BufEnter *.tex set autowrite
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_GotoError = 0
function! SyncTexForward()
   let execstr = "silent !okular --unique %:p:r.pdf\\#src:".line(".")."%:p &"
   exec execstr
endfunction
let g:Tex_ViewRule_pdf = 'okular'

nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
inoremap {<cr> {<cr>}<c-o>O
inoremap ({;<cr> ({<cr>});<c-o>O
inoremap [<cr> [<cr>]<c-o>O
inoremap (<cr> (<cr>)<c-o>O
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>


let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
