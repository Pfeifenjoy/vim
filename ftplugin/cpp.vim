map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#sources#clang#std#c = 'c11'
let g:deoplete#sources#clang#std#cpp = 'c++14'
let g:deoplete#sources#clang#sort_algo = 'priority'
