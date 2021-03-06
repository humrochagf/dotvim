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
        Plug 'Yggdroot/indentLine'
        Plug 'lifepillar/gruvbox8'
        Plug 'gorodinskiy/vim-coloresque'
    " }

    " Interface and Navigation {
        Plug 'itchyny/lightline.vim'
        Plug 'jistr/vim-nerdtree-tabs'
        Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
        Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeTabsToggle' }
    " }

    " Utility {
        Plug 'Shougo/vimproc.vim', {'do' : 'make'}
        Plug 'VincentCordobes/vim-translate'
        Plug 'jiangmiao/auto-pairs'
        Plug 'scrooloose/nerdcommenter'
        Plug 'sheerun/vim-polyglot'
        Plug 'mileszs/ack.vim'
    " }

    " Git {
        Plug 'mhinz/vim-signify'
        Plug 'tpope/vim-fugitive'
    " }

    " Code Completion {
        Plug 'SirVer/ultisnips'
        Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
        Plug 'honza/vim-snippets'
    " }

    " Lint {
        Plug 'w0rp/ale'
    " }

    " C/C++ {
        Plug 'derekwyatt/vim-fswitch'
    " }

    " Python {
        Plug 'fisadev/vim-isort', { 'for': 'python' }
        Plug 'jmcantrell/vim-virtualenv'
    " }

    " Elm {
        Plug 'elmcast/elm-vim', { 'for': 'elm' }
    " }

    " Rust {
        Plug 'rust-lang/rust.vim', { 'for': 'rust' }
    " }

    " TypeScript/Angular {
        Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
        Plug 'Quramy/vim-js-pretty-template', { 'for': 'typescript' }
    " }

    " HTML {
        Plug 'mattn/emmet-vim', { 'for': ['html', 'jinja', 'htmldjango'] }
    " }
" }

call plug#end()

" Required:
filetype plugin indent on
