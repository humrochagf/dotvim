" ===============================================
" VIM-Plug configuration and plugin registration
" ===============================================

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
    if &compatible
        set nocompatible               " Be iMproved
    endif
endif

" Required:
call plug#begin('~/.vim/plugged')

" Bundles {

    " Visual and Cosmetics {
        Plug 'flazz/vim-colorschemes'
        Plug 'oblitum/rainbow'
        Plug 'gorodinskiy/vim-coloresque'
        Plug 'Yggdroot/indentLine'
        Plug 'godlygeek/csapprox'
    " }

    " Interface and Navigation {
        Plug 'itchyny/lightline.vim'
        Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeTabsToggle' }
        Plug 'jistr/vim-nerdtree-tabs'
        Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
    " }

    " Utility {
        Plug 'sheerun/vim-polyglot'
        Plug 'tpope/vim-surround'
        Plug 'Townk/vim-autoclose'
        Plug 'Lokaltog/vim-easymotion'
        Plug 'ervandew/supertab'
        Plug 'scrooloose/nerdcommenter'
        Plug 'kien/ctrlp.vim'
    " }

    " Git {
        Plug 'tpope/vim-fugitive'
        Plug 'mhinz/vim-signify'
    " }

    " Code Completion {
        Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
    " }

    " Python {
        Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
        Plug 'hdima/python-syntax', { 'for': 'python' }
        Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }
        Plug 'fisadev/vim-isort', { 'for': 'python' }
    " }

    " Elm {
        Plug 'lambdatoast/elm.vim', { 'for': 'elm' }
    " }

    " HTML {
        Plug 'amirh/HTML-AutoCloseTag', { 'for': ['html', 'jinja', 'htmldjango'] }
        Plug 'mattn/emmet-vim', { 'for': ['html', 'jinja', 'htmldjango'] }
        Plug 'tpope/vim-haml', { 'for': ['html', 'jinja', 'htmldjango'] }
        Plug 'hail2u/vim-css3-syntax'
    " }

    " Metrics {
        Plug 'wakatime/vim-wakatime'
    " }

    " Pair Programming {
        Plug 'floobits/floobits-vim', { 'on': 'FlooJoinWorkspace' }
    " }
" }

call plug#end()

" Required:
filetype plugin indent on
