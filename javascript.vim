" Javascript and jsx (React)
Plug 'chemzqm/vim-jsx-improve', { 'for': 'javascript' }

" [My previous javscript config, before Aug 2017] Syntax and indent for javascript
" Plug 'othree/yajs.vim', { 'for': 'javascript' }
" Plug 'gavocanov/vim-js-indent', { 'for': 'javascript' }

" Syntax highlight inside string literals
" useful for choo, bel, css-style and graphql
Plug 'Quramy/vim-js-pretty-template', { 'for': 'javascript' }
autocmd BufWinEnter *.js :call jspretmpl#register_tag('html', 'html')
autocmd BufWinEnter *.js :call jspretmpl#register_tag('css', 'css')
autocmd BufWinEnter *.js :JsPreTmpl html

