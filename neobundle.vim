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

    " Visual and Cosmetics {
        NeoBundle 'flazz/vim-colorschemes'
        NeoBundle 'oblitum/rainbow'
        NeoBundle 'gorodinskiy/vim-coloresque'
        NeoBundle 'Yggdroot/indentLine'
        NeoBundle 'godlygeek/csapprox'
    " }

    " Interface and Navigation {
        NeoBundle 'itchyny/lightline.vim'
        NeoBundle 'scrooloose/nerdtree'
        NeoBundle 'jistr/vim-nerdtree-tabs'
        NeoBundle 'majutsushi/tagbar'
    " }

    " Utility {
        NeoBundle 'tpope/vim-surround'
        NeoBundle 'Townk/vim-autoclose'
        NeoBundle 'Lokaltog/vim-easymotion'
        NeoBundle 'ervandew/supertab'
        NeoBundle 'scrooloose/nerdcommenter'
    " }

    " Git {
        NeoBundle 'tpope/vim-fugitive'
        NeoBundle 'mhinz/vim-signify'
    " }

    " Code Completion {
        NeoBundle 'Valloric/YouCompleteMe'
        NeoBundle 'SirVer/ultisnips'
        NeoBundle 'honza/vim-snippets'
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
        NeoBundle 'mattn/emmet-vim'
    " }

    " Markdown {
        NeoBundle 'tpope/vim-markdown'
    " }

" }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
