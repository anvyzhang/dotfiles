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
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on
filetype plugin on

" Global settings
"set bg=dark
filetype off
syntax on
set ai
set nu
set hls
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set t_Co=256
set laststatus=2
set noshowmode
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,chinese
set list listchars=tab:→\ ,trail:·
set autoread
set ignorecase
set shortmess=at

" Preferences
let g:bufferline_echo = 0
let mapleader=","
let g:airline_theme='bubblegum'
map <silent> <F2> : !ctags -R .<CR>
map <silent> <F3> :Rgrep<CR>
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left=1
nmap <silent> <leader>ne :NERDTree<CR>
nmap <silent> <leader>nc :NERDTreeClose<CR>
map <silent> <F1> :NERDTreeToggle<CR>
let NERDTreeWinPos="right"
let g:ctrlp_custom_ignore = {
  \ 'dir':  'vendor/bundle/*\|vendor/cache/*\|public\|spec',
  \ 'file': '\v\.(exe|so|dll|swp|log|jpg|png|json)$',
  \ }
