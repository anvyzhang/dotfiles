" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mileszs/ack.vim'
Plugin 'exvim/ex-matchit'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
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
set timeout
set timeoutlen=1000
set ttimeoutlen=50

" Preferences

" Tree
let mapleader=","
nmap <silent> <leader>ne :NERDTree<CR>
nmap <silent> <leader>nc :NERDTreeClose<CR>
map <silent> <F1> :NERDTreeToggle<CR>
let NERDTreeWinPos="right"

" Tags & Search
map <silent> <F2> : !ctags -R .<CR>
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  'vendor/bundle/*\|vendor/cache/*\|public\|spec',
  \ 'file': '\v\.(exe|so|dll|swp|log|jpg|png|json)$',
  \ }
if executable("ack")
    nnoremap <leader>a :Ack 
    let g:ackprg="ack -H --smart-case --nocolor --nogroup --column --nojs
          \ --nocss --ignore-dir=vendor --ignore-dir=log --ignore-dir=tmp
          \ --ignore-file=is:Session.vim --ignore-file=is:tags"
    let g:ackhighlight=1
endif

" StatusLine
let g:bufferline_echo = 0
let g:airline_theme='bubblegum'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = '⎇'

" File types
autocmd BufNewFile,BufRead Thorfile set filetype=ruby
autocmd BufNewFile,BufRead *.thor set filetype=ruby
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Capfile set filetype=ruby
autocmd BufNewFile,BufRead pryrc set filetype=ruby
autocmd BufNewFile,BufRead *.less set filetype=css
autocmd BufNewFile,BufRead *.god set filetype=ruby
autocmd BufNewFile,BufRead *.mkd set ai formatoptions=tcroqn2 comments=n:>
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd FileType go,c,rust set ts=4 sw=4 sts=4 et
