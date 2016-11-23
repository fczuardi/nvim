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

" new vertical splits open on the right-hand side
set splitright

" display the current command being typed
set showcmd

" Alt+j, k move lines down/up
" see http://vim.wikia.com/wiki/Moving_lines_up_or_down
" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv

" vim-plug plugin manager
" see https://github.com/junegunn/vim-plug
call plug#begin()

" hard mode! disable arrows and hjkl
Plug 'wikitopian/hardmode'

" Fancier statusline
Plug 'vim-airline/vim-airline'

" tags manager
" Plug 'Ludovicchabant/vim-gutentags'

" tags manager and UI
" Plug 'majutsushi/tagbar'

" Search MDN documentation from vim
" since this is a node.js plugin a
" :UpdateRemotePlugins is needed after restart
Plug 'neovim/node-host', { 'do': 'yarn' }
Plug 'mklabs/mdn.vim', { 'do': 'yarn' }

" elm-lang make errors and description
" see https://github.com/elmcast/elm-vim
Plug 'elmcast/elm-vim'

" TOML syntax
Plug 'cespare/vim-toml'

" gutter for git changes
Plug 'airblade/vim-gitgutter'

" Neomake (linters)
Plug 'neomake/neomake'
Plug 'jaawerth/neomake-local-eslint-first'

" tab completions
Plug 'ervandew/supertab'

" quotes, parens and brackets auto-completion on insert mode
Plug 'Raimondi/delimitMate'

" project full-text search
Plug 'mileszs/ack.vim'

" surroundings
Plug 'tpope/vim-surround'

" file fuzzy search
Plug 'kien/ctrlp.vim'

" toggle comment line or block
Plug 'scrooloose/nerdcommenter'

" multiple cursors
Plug 'vim-multiple-cursors'

" Goyo - distraction-free editing
Plug 'junegunn/goyo.vim'

" Nova colorscheme
Plug 'trevordmiller/nova-vim'

call plug#end()

" Nova color theme
colorscheme nova

" toggle hardMode / easyMode with \h in normal mode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" change color column to display a bg and set it to 80
highlight ColorColumn guifg=#3C4C55 guibg=#556873
set colorcolumn=80

" Neomake
"
" - HTML
"   use tidy-html5 for modern markup checker
"   brew install tidy-html5
"
" - Javascript
let g:neomake_javascript_enabled_makers = ['eslint']
" open error list and lint on all saves
let g:neomake_open_list=0
autocmd BufWritePost * Neomake

" gutentags {{{
" let g:gutentags_ctags_executable_javascript = 'es-ctags -R'
" let g:gutentags_trace=1
" }}}

" Tagbar {{{
let g:tagbar_type_javascript = {
\ 'ctagsbin' : '/Users/fczuardi/.nvm/versions/node/v7.1.0/bin/es-ctags'
\ }
" }}}


" Elm
" auto format on save
let g:elm_format_autosave = 1

" gitgutter
let g:gitgutter_sign_column_always = 1
set updatetime=250

" add space after comment
let g:NERDSpaceDelims = 1

" airline top bar with buffers and tabs
let g:airline#extensions#tabline#enabled = 1

" silver searcher aka ag / ack full text search config
let g:ackprg = 'ag --nogroup --nocolor --column'

" fuzzy finder config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,*/dist/*,.git
let g:ctrlp_map = '<c-p>'
let g:ctrlp_use_caching=1

" waiting for https://github.com/zeit/hyper/issues/270 to be fixed :(
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " Cursor is pipe in Insert, block in Normal

