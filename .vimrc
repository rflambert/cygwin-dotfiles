" General
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set number
set cursorline
set showmatch
set wildmenu
set incsearch
set hlsearch
set lazyredraw
set mouse=a
set nofoldenable
set foldmethod=syntax
set backspace=indent,eol,start

" Keybindings
nnoremap j gj
nnoremap k gk
set splitbelow
set splitright
nnoremap <C-Right> <C-W><C-L> 
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-A-Right> :bnext<CR>
nnoremap <C-A-Left> :bprevious<CR>
nnoremap <silent> <CR> :nohlsearch<CR><CR>


" Vundle Config
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/promptline.vim'

call vundle#end()
filetype plugin indent on

" Airline Config
set laststatus=2

let g:airline_powerline_fonts = 1
if !exists('airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:promptline_preset = {
        \'a' : [ promptline#slices#cwd({ 'dir_limit': 5 }) ],
        \'b' : [ promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#last_exit_code() ],
	\'x' : [ '%*' ]}

" Colors
colorscheme jellybeans
syntax enable
