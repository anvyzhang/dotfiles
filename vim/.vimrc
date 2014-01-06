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
 
map <silent> <F2> : !ctags -R .<CR>
map <silent> <F3> :Rgrep<CR>
nnoremap <silent> <F8> :TlistToggle<CR>

let mapleader=","
let NERDTreeWinPos="right"
nmap <leader>ne :NERDTree<cr>
nmap <leader>nc :NERDTreeClose<cr>

filetype plugin on
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
