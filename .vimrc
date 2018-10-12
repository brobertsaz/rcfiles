set nocompatible
filetype off

set background=dark

set ts=2
set bs=2
set shiftwidth=2
set softtabstop=2
set expandtab
set mouse=a
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'


Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-cucumber.git'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'godlygeek/tabular'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'slim-template/vim-slim.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'haya14busa/incsearch.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()
filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set number
set laststatus=2
set incsearch
set hlsearch
set clipboard=unnamed
set guifont=Monaco:h13

let g:incsearch#auto_nohlsearch = 1
let mapleader=","
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:used_javascript_libs = 'angularjs,underscore'
let g:airline_theme='dark'

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

noremap tl :tabnext<CR>
noremap th :tabprev<CR>
noremap tn :tabnew<CR>
noremap td :tabclose<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

noremap <C-g> :NERDTreeToggle<CR>
nnoremap ; :
inoremap jj <ESC>
autocmd BufWritePre * %s/\s\+$//e
syntax enable
colorscheme slate
filetype plugin indent on
