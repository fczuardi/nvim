" Use local eslint as a Neomake linter
Plug 'jaawerth/neomake-local-eslint-first', { 'for': 'javascript' }
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_open_list=0
autocmd BufWritePost *.js Neomake

