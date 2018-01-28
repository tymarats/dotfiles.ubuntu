call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'editorconfig/editorconfig-vim'
Plug 'tymarats/vim-jsx'
Plug 'pangloss/vim-javascript'

call plug#end()

" We don't use JSX extension
let g:jsx_ext_required = 0

set number
set shiftwidth=4
set tabstop=4
let g:solarized_termcolors=256

set background=dark
colorscheme gruvbox

" Seems like there's no other way to disable bell in Windows"
set visualbell

" https://github.com/changemewtf/no_plugins/blob/master/no_plugins.vim

set nocompatible

filetype plugin on
set path+=**
set wildmenu

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

set hlsearch
set wildignore+=node_modules/**,bin/**,obj/**

inoremap jk <esc>

