" Nova colorscheme
if has('termguicolors')
    Plug 'chriskempson/base16-vim'
    set termguicolors
    autocmd VimEnter * colorscheme base16-default-dark
endif
