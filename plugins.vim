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
        Plug 'jiangmiao/auto-pairs'
        Plug 'terryma/vim-multiple-cursors'
        Plug 'scrooloose/nerdcommenter'
        Plug 'Shougo/vimproc.vim', {'do' : 'make'}
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
        Plug 'fisadev/vim-isort', { 'for': 'python' }
    " }

    " Elm {
        Plug 'elmcast/elm-vim', { 'for': 'elm' }
    " }

    " TypeScript/Angular {
        Plug 'Quramy/vim-js-pretty-template', { 'for': 'typescript' }
        Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
    " }

    " HTML {
        Plug 'mattn/emmet-vim', { 'for': ['html', 'jinja', 'htmldjango'] }
    " }

    " Metrics {
        Plug 'wakatime/vim-wakatime'
    " }
" }

call plug#end()

" Required:
filetype plugin indent on
