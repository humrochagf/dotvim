" ====================
" Vundle Configuration
" ====================

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/Vundle.vim'

" --------------
" Plugin Bundles
" --------------

" UI Additions
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'wesgibbs/vim-irblack'
" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'maelstrom/linters.vim'
Bundle 'gerw/vim-latex-suite'
Bundle 'davidhalter/jedi-vim'

call vundle#end()
filetype plugin indent on

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
