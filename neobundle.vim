" ===============================================
" NeoBundle configuration and plugin registration
" ===============================================

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
    if &compatible
        set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Bundles {

    " Required deps {
        NeoBundleFetch 'Shougo/neobundle.vim'
    " }

    " UI {
        NeoBundle 'flazz/vim-colorschemes'
        NeoBundle 'itchyny/lightline.vim'
        NeoBundle 'scrooloose/nerdtree'
        NeoBundle 'jistr/vim-nerdtree-tabs'
        NeoBundle 'mbbill/undotree'
        NeoBundle 'Yggdroot/indentLine'
        NeoBundle 'godlygeek/csapprox'
    " }

    " General {
        NeoBundle 'kien/ctrlp.vim'
        NeoBundle 'tacahiroy/ctrlp-funky'
        NeoBundle 'tpope/vim-surround'
        NeoBundle 'Townk/vim-autoclose'
        NeoBundle 'terryma/vim-multiple-cursors'
        NeoBundle 'Lokaltog/vim-easymotion'
        NeoBundle 'gcmt/wildfire.vim'
    " }

    " Git {
        NeoBundle 'tpope/vim-fugitive'
        NeoBundle 'mhinz/vim-signify'
    " }

    " General Programming {
        NeoBundle 'scrooloose/nerdcommenter'
        NeoBundle 'godlygeek/tabular'
        NeoBundle 'scrooloose/syntastic'
        NeoBundle 'majutsushi/tagbar'
    " }

    " Snippets & AutoComplete {
        NeoBundle 'SirVer/ultisnips'
        NeoBundle 'honza/vim-snippets'
    " }

    " Python {
        NeoBundle 'davidhalter/jedi-vim'
        NeoBundle 'jmcantrell/vim-virtualenv'
        NeoBundle 'hdima/python-syntax'
        NeoBundle 'hynek/vim-python-pep8-indent'
        NeoBundle 'vim-scripts/django.vim'
    " }

    " Javascript {
        NeoBundle 'elzr/vim-json'
        NeoBundle 'groenewege/vim-less'
        NeoBundle 'pangloss/vim-javascript'
    " }

    " HTML {
        NeoBundle 'amirh/HTML-AutoCloseTag'
        NeoBundle 'hail2u/vim-css3-syntax'
        NeoBundle 'gorodinskiy/vim-coloresque'
        NeoBundle 'tpope/vim-haml'
    " }

    " Misc {
        NeoBundle 'tpope/vim-markdown'
        NeoBundle 'spf13/vim-preview'
    " }

" }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
