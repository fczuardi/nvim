" change color column to display a bg and set it to 80
highlight ColorColumn guifg=#3C4C55 guibg=#556873
set colorcolumn=80

" Alt+j, k move lines down/up
" see http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" hard mode! disable arrows and hjkl
Plug 'wikitopian/hardmode'
" toggle hardMode / easyMode with \h in normal mode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" tags manager
" Plug 'Ludovicchabant/vim-gutentags'

" tags manager and UI
" Plug 'majutsushi/tagbar'

" gutentags {{{
" let g:gutentags_ctags_executable_javascript = 'es-ctags -R'
" let g:gutentags_trace=1
" }}}

" Tagbar {{{
let g:tagbar_type_javascript = {
\ 'ctagsbin' : '/Users/fczuardi/.nvm/versions/node/v7.1.0/bin/es-ctags'
\ }
" }}}

" surroundings
Plug 'tpope/vim-surround'

" multiple cursors
Plug 'vim-multiple-cursors'

" Goyo - distraction-free editing
Plug 'junegunn/goyo.vim'

" Search MDN documentation from vim
" since this is a node.js plugin a
" :UpdateRemotePlugins is needed after restart
Plug 'neovim/node-host', { 'do': 'yarn' }
Plug 'mklabs/mdn.vim', { 'do': 'yarn' }


