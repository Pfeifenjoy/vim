let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
map <F3> :YcmCompleter GoToDefinition<CR>
map <F4> :YcmCompleter GoToDeclaration<CR>
map <F2> :YcmCompleter GetType<CR>
