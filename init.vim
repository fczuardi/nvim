" tab to be 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" relative numbers
set number
set relativenumber

" persistent undo
set undofile
set undodir=~/.nvimundo

" vim-plug plugin manager
" see https://github.com/junegunn/vim-plug
call plug#begin()

" Neomake (linters)
Plug 'neomake/neomake'
Plug 'jaawerth/neomake-local-eslint-first'

" gutter for git changes
Plug 'airblade/vim-gitgutter'

" tab completions
Plug 'ervandew/supertab'

" surroundings
Plug 'tpope/vim-surround'

" toggle comment line or block
Plug 'scrooloose/nerdcommenter'

" multiple cursors
Plug 'vim-multiple-cursors'

" Nova colorscheme
Plug 'trevordmiller/nova-vim'

call plug#end()

" Nova color theme
colorscheme nova

" highlight in red charachters after the 72th column
match ErrorMsg '\%>72v.\+'

" run eslint on save
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_open_list=2
autocmd BufWritePost * Neomake

" gitgutter
let g:gitgutter_sign_column_always = 1
set updatetime=250

" add space after comment
let g:NERDSpaceDelims = 1

" waiting for https://github.com/zeit/hyper/issues/270 to be fixed :(
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " Cursor is pipe in Insert, block in Normal

