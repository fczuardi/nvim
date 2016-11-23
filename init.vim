call plug#begin()
" basic
source $HOME/mnmo/nvim/cmdbar.vim
source $HOME/mnmo/nvim/tabs.vim
source $HOME/mnmo/nvim/undo.vim

" code editing
source $HOME/mnmo/nvim/comment.vim
source $HOME/mnmo/nvim/autocomplete.vim
source $HOME/mnmo/nvim/git.vim

" project files
source $HOME/mnmo/nvim/fuzzyfind.vim
source $HOME/mnmo/nvim/grep.vim

" languages
source $HOME/mnmo/nvim/neomake.vim
source $HOME/mnmo/nvim/neomake.javascript.vim
source $HOME/mnmo/nvim/toml.vim
source $HOME/mnmo/nvim/elm.vim

" visual enchancements
source $HOME/mnmo/nvim/number.vim
source $HOME/mnmo/nvim/statusline.vim
source $HOME/mnmo/nvim/colorscheme.gruvbox.vim
" source $HOME/mnmo/nvim/colorscheme.base16.vim
" source $HOME/mnmo/nvim/colorscheme.nova.vim
call plug#end()

