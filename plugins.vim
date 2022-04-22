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
        Plug 'gko/vim-coloresque'
    " }

    " Interface and Navigation {
        Plug 'itchyny/lightline.vim'
        Plug 'preservim/tagbar', { 'on': 'TagbarToggle' }
        Plug 'preservim/nerdtree'
    " }

    " Utility {
        Plug 'Shougo/vimproc.vim', {'do' : 'make'}
        Plug 'jiangmiao/auto-pairs'
        Plug 'preservim/nerdcommenter'
        Plug 'sheerun/vim-polyglot'
        Plug 'sotte/presenting.vim'
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
        Plug 'mattn/emmet-vim'
        Plug 'lepture/vim-jinja'
    " }

    " Uxntal {
        Plug 'karolbelina/uxntal.vim'
    " }

    " Vim vs Neovim pluggins {
        if has('nvim')
            Plug 'nvim-lua/plenary.nvim'
            Plug 'nvim-telescope/telescope.nvim'
            Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        else
            Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
            Plug 'junegunn/fzf.vim'
        endif
    " }
" }

call plug#end()

" Required:
filetype plugin indent on
