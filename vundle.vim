" ====================
" Vundle Configuration
" ====================

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles

    " Required deps {
        Bundle 'gmarik/Vundle.vim'
    " }

    " UI {
        Bundle 'flazz/vim-colorschemes'
        Bundle 'bling/vim-airline'
        Bundle 'bling/vim-bufferline'
        Bundle 'scrooloose/nerdtree'
        Bundle 'jistr/vim-nerdtree-tabs'
        Bundle 'mbbill/undotree'
        Bundle 'nathanaelkane/vim-indent-guides'
    " }

    " General {
        Bundle 'kien/ctrlp.vim'
        Bundle 'tacahiroy/ctrlp-funky'
        Bundle 'tpope/vim-surround'
        Bundle 'spf13/vim-autoclose'
        Bundle 'terryma/vim-multiple-cursors'
        Bundle 'Lokaltog/vim-easymotion'
        Bundle 'gcmt/wildfire.vim'
    " }

    " Git {
        Bundle 'tpope/vim-fugitive'
        Bundle 'mhinz/vim-signify'
    " }

    " Programming {
        Bundle 'scrooloose/nerdcommenter'
        Bundle 'maelstrom/linters.vim'
        Bundle 'davidhalter/jedi-vim'
    " }

    " LATEX {
        Bundle 'gerw/vim-latex-suite'
    " }
" }

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
