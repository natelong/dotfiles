colorscheme colorsbox-stbright " awesome colorscheme
syntax enable          " enable syntax processing
set guifont=Source\ Code\ Pro:h12

set tabstop=4          " number of visual spaces per tab
set softtabstop=4      " number of spaces in tab when editing
set shiftwidth=4
set expandtab          " tabs are spaces

set number             " enable line numbers
set showcmd            " show command in bottom bar
set cursorline         " highlight current line
set relativenumber     " relative line numbers

set lazyredraw         " redraw only when we need to
set showmatch          " highlight matching brackets

set incsearch          " search as characters are entered
set hlsearch           " highlight matches

set mouse=a
set scrolloff=10

set confirm            " prompt to close unsaved buffer changes
set clipboard=unnamed

set complete=.,b,u,]
set wildmode=longest,list:longest

set ff=unix

highlight Normal ctermbg=none
highlight NonText ctermbg=none

let mapleader=";"

nnoremap <leader>l :bnext!<cr>
nnoremap <leader>h :bprevious!<cr>
nnoremap <leader>w :bdelete<cr>
nnoremap <leader>r :edit!<cr>
nnoremap <leader>o :Explore<cr>
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>v :r !pbpaste<cr>
vnoremap <leader>c :w !pbcopy<cr><cr>

imap <Tab> <C-P>

" Space opens and closes folds
nnoremap <space> za
vnoremap <space> zf

" Move up and down visually
nnoremap j gj
nnoremap k gk

nnoremap <leader>k <C-W><C-W>

" tab indent, shift-tab unindent
noremap <Tab> >>
noremap <S-Tab> <<
vnoremap <Tab> >>
vnoremap <S-Tab> <<

set splitbelow
set splitright

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=":t"
let g:airline_powerline_fonts=0
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_left_sep = ''

" Plugin config
set nocompatible
filetype on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/vim-airline/vim-airline.git'
Plugin 'tpope/vim-git'
call vundle#end()
filetype plugin on

