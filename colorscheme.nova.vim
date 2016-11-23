" Nova colorscheme
if has('termguicolors')
    Plug 'trevordmiller/nova-vim'
    set termguicolors
    autocmd VimEnter * colorscheme nova
endif
