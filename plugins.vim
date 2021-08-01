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
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
    " }

    " Git {
        Plug 'mhinz/vim-signify'
        Plug 'tpope/vim-fugitive'
    " }

    " Code Completion {
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " }

    " Lint {
        Plug 'dense-analysis/ale'
    " }

    " C/C++ {
        Plug 'derekwyatt/vim-fswitch'
    " }

    " C# {
        Plug 'OmniSharp/omnisharp-vim'
    " }

    " Python {
        Plug 'fisadev/vim-isort', { 'for': 'python' }
        Plug 'jmcantrell/vim-virtualenv'
    " }

    " HTML {
        Plug 'mattn/emmet-vim', { 'for': ['html', 'jinja', 'htmldjango'] }
    " }
" }

call plug#end()

" Required:
filetype plugin indent on
