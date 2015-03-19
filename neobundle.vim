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
        NeoBundle 'majutsushi/tagbar'
        NeoBundle 'Yggdroot/indentLine'
        NeoBundle 'oblitum/rainbow'
        NeoBundle 'gorodinskiy/vim-coloresque'
        NeoBundle 'godlygeek/csapprox'
    " }

    " General {
        NeoBundle 'tpope/vim-surround'
        NeoBundle 'Townk/vim-autoclose'
        NeoBundle 'Valloric/MatchTagAlways'
        NeoBundle 'Lokaltog/vim-easymotion'
    " }

    " Git {
        NeoBundle 'tpope/vim-fugitive'
        NeoBundle 'mhinz/vim-signify'
    " }

    " General Programming {
        NeoBundle 'Valloric/YouCompleteMe'
        NeoBundle 'scrooloose/nerdcommenter'
        NeoBundle 'scrooloose/syntastic'
    " }

    " Python {
        NeoBundle 'jmcantrell/vim-virtualenv'
        NeoBundle 'hdima/python-syntax'
        NeoBundle 'hynek/vim-python-pep8-indent'
        NeoBundle 'vim-scripts/django.vim'
    " }

    " Javascript {
        NeoBundle 'elzr/vim-json'
        NeoBundle 'pangloss/vim-javascript'
    " }

    " HTML {
        NeoBundle 'amirh/HTML-AutoCloseTag'
        NeoBundle 'hail2u/vim-css3-syntax'
    " }

    " Misc {
        NeoBundle 'tpope/vim-markdown'
    " }

" }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
