colorscheme colorsbox-stbright " awesome colorscheme
syntax enable          " enable syntax processing
set guifont=Meslo\ LG\ S\ for\ Powerline:h11

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
set scrolloff=15

set confirm            " prompt to close unsaved buffer changes

highlight Normal ctermbg=none
highlight NonText ctermbg=none

let mapleader=";"

nnoremap <leader>t :enew<cr>
nnoremap <leader>l :bnext!<cr>
nnoremap <leader>h :bprevious!<cr>
nnoremap <leader>w :bdelete<cr>
nnoremap <leader>r :edit!<cr>
nnoremap <leader>s :w<cr>
nnoremap <leader>o :Explore<cr>
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>v :r !pbpaste<cr>
vnoremap <leader>c :w !pbcopy<cr><cr>
nnoremap <leader>] :cnext<cr>
nnoremap <leader>[ :cprev<cr>
nnoremap <leader>n :new<cr>

" Space opens and closes folds
nnoremap <space> za

" Move up and down visually
nnoremap j gj
nnoremap k gk

" tab indent, shift-tab unindent
noremap <Tab> >>
noremap <S-Tab> <<

" Net netrw to tree style
let g:netrw_liststyle=3

" CtrlP Settings
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_map='<leader>p'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode=0
let g:ctrlp_user_command='ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_use_caching=0

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=":t"
let g:airline_powerline_fonts=0
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_left_sep = ''


" set backup
" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set backupskip=/tmp/*,/private/tmp/*
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set writebackup

" Plugin config
set nocompatible
filetype on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/vim-airline/vim-airline.git'
Plugin 'kchmck/vim-coffee-script'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'MattesGroeger/vim-bookmarks'
call vundle#end()
filetype plugin on
