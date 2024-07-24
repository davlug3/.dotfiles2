set nocompatible

" file type detection. 
filetype on
"
" enable plugins and load plugin for the 
" detected filetype
filetype plugin on


" Load in indent file for the detected filetype
filetype indent on

" syntax highlighting
syntax on

" line numbers
set number


set cursorline

colorscheme slate

" shift width
set shiftwidth=4
set tabstop=4
set expandtab


" no backup files
set nobackup

set scrolloff=4

" Disable wrapping
set nowrap


" -------- SEARCHING -------
" Highlight characters as you type when searching
set incsearch
set ignorecase
set smartcase


set showmode
set showcmd
set showmatch

set hlsearch

set wildmenu
set wildmode=list:longest




" PLUGINS --------------------------------- {{{
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'kien/ctrlp.vim'
call plug#end()
"
" }}}

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>b :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>




