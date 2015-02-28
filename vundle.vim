" ============================================
" Vundle configuration and bundle registration
" ============================================

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
        Bundle 'itchyny/lightline.vim'
        Bundle 'scrooloose/nerdtree'
        Bundle 'jistr/vim-nerdtree-tabs'
        Bundle 'mbbill/undotree'
        Bundle 'Yggdroot/indentLine'
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

    " General Programming {
        Bundle 'scrooloose/nerdcommenter'
        Bundle 'godlygeek/tabular'
    " }

    " Snippets & AutoComplete {
        Bundle 'SirVer/ultisnips'
        Bundle 'honza/vim-snippets'
    " }

    " Writing {
        Bundle 'reedes/vim-litecorrect'
        Bundle 'reedes/vim-textobj-sentence'
        Bundle 'reedes/vim-textobj-quote'
        Bundle 'reedes/vim-wordy'
    " }

    " Python {
        Bundle 'davidhalter/jedi-vim'
        Bundle 'jmcantrell/vim-virtualenv'
        Bundle 'hdima/python-syntax'
        Bundle 'hynek/vim-python-pep8-indent'
    " }

    " Javascript {
        Bundle 'elzr/vim-json'
        Bundle 'groenewege/vim-less'
        Bundle 'pangloss/vim-javascript'
    " }

    " HTML {
        Bundle 'amirh/HTML-AutoCloseTag'
        Bundle 'hail2u/vim-css3-syntax'
        Bundle 'gorodinskiy/vim-coloresque'
        Bundle 'tpope/vim-haml'
    " }

    " Misc {
        Bundle 'tpope/vim-markdown'
        Bundle 'spf13/vim-preview'
    " }

" }

call vundle#end()
filetype plugin indent on
