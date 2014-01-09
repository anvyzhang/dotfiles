if has("syntax")
  syntax on
endif
 
"set bg=dark

set ai
set nu
set hls 
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab

let mapleader=","
 
map <silent> <F2> : !ctags -R .<CR>
map <silent> <F3> :Rgrep<CR>

nmap <F8> :TagbarToggle<CR>
let g:tagbar_left=1

nmap <leader>ne :NERDTree<cr>
nmap <leader>nc :NERDTreeClose<cr>
let NERDTreeWinPos="right"

filetype plugin on
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
