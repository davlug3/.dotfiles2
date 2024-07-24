"" MY VIMRC
"" I just got this on several sources on the internet
"" para sakin lang to 


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

" handle swap files  ------------ {{{
if !isdirectory($HOME . '.vim/backup')
    call mkdir($HOME .'/.vim/backup', 'p')
endif


if !isdirectory($HOME . '.vim/swap')
    call mkdir($HOME .'/.vim/swap', 'p')
endif

if !isdirectory($HOME . '.vim/undo')
    call mkdir($HOME .'/.vim/undo', 'p')
endif

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" }}}


" PLUGINS --------------------------------- {{{
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'kien/ctrlp.vim'
    Plug 'dense-analysis/ale'
call plug#end()

"
" }}}
"

" MAPPINGS --------------------------- {{{
" }}}


" VIMSCRIPT ------------------------- {{{
"
" enable code folding
" zo/zc to open/close the fold under curser
" zR/zM to open/close all folds
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END


"
"}}}

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>b :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>




