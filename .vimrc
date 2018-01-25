call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'tymarats/vim-jsx'
Plug 'editorconfig/editorconfig-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

call plug#end()
let g:jsx_ext_required = 0

set number
set shiftwidth=4
set tabstop=4
let g:solarized_termcolors=256

set background=dark
colorscheme gruvbox

