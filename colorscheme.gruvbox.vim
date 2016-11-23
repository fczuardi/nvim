" Nova colorscheme
if has('termguicolors')
    Plug 'morhetz/gruvbox'
    set termguicolors
    set background=dark
    autocmd VimEnter * colorscheme gruvbox
endif
