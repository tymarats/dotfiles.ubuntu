call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
:

" Esseential
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'prettier/vim-prettier'
Plug 'editorconfig/editorconfig-vim'

" React / CxJS
Plug 'tymarats/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale' " Make sure you have eslint installed

call plug#end()

" We don't use JSX extension
let g:jsx_ext_required = 0

set number
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

set wildignore+=**/node_modules/**,**/bin/**,**/obj/**

let NERDTreeMinimalUI=1

" Let's not leave the home key for ESC
inoremap jk <esc>

" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
nmap <leader>f :NERDTreeToggle<cr>

" Show tabs
set nolist
set listchars=tab:␉-,trail:·,eol:¬
nmap <Leader>l :set invlist<cr>

" prettier
let g:prettier#config#tab_width = 4

