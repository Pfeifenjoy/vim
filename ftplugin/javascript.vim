"JSX Syntax options
let g:jsx_ext_required = 0

" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
"set completeopt=menuone
let g:syntastic_javascript_checkers = ['eslint']

" tern
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'
let g:tern#filetypes = ['jsx']

" syntax highlighting
let g:javascript_plugin_flow = 1

iabbrev func function
imap ' `
