" Use local eslint as a Neomake linter
Plug 'jaawerth/nrun.vim', { 'for': 'javascript' }

let g:neomake_javascript_enabled_makers = ['eslint']
au BufEnter *.js let b:neomake_javascript_eslint_exe = nrun#Which('eslint')
autocmd! BufWritePost *.js Neomake
" let g:neomake_open_list=0

