" Global settings
"set bg=dark
syntax on
set ai
set nu
set hls 
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
let mapleader=","
filetype off

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mustafar/rgrep'
Plugin 'exvim/ex-matchit'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
call vundle#end()
filetype plugin indent on
filetype plugin on
 
" Preferences
map <silent> <F2> : !ctags -R .<CR>
map <silent> <F3> :Rgrep<CR>
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left=1
nmap <leader>ne :NERDTree<cr>
nmap <leader>nc :NERDTreeClose<cr>
let NERDTreeWinPos="right"
let g:ctrlp_custom_ignore = {
  \ 'dir':  'vendor/bundle/*\|vendor/cache/*\|public\|spec',
  \ 'file': '\v\.(exe|so|dll|swp|log|jpg|png|json)$',
  \ }
