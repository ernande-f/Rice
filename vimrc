set number

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'terryma/vim-multiple-cursors'
Plug 'lifepillar/vim-solarized8'
Plug 'ap/vim-css-color'

call plug#end()

nnoremap <C-p> :FZF<CR>
nnoremap <C-S-p> :FZF /home<CR>
