" file fuzzy search
Plug 'ctrlpvim/ctrlp.vim'

" fuzzy finder config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,*/dist/*,.git

" use ag for fast filenime find and dont keep a cache
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching=0

" new vertical splits open on the right-hand side
set splitright

