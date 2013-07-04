" clean this mess ******
" All of the plugins are installed with Vundle from this file.
source ~/.vim/vundle.vim

" Automatically detect file types. (must turn on after Vundle)
filetype plugin indent on

" Plugin configuration files.
source ~/.vim/plugin_config.vim

" Swap terminal title
set title

" Spelling config
" Toggle spell checking on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>
" Set region to British English
set spelllang=pt

" Automatic reloading of .vimrc
" Awesome for testing configuration changes without needing to close and re-open vim
autocmd! bufwritepost .vimrc source %

" Better copy & paste
set pastetoggle=<f2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a
set bs=2

" Rebind <Leader> key
let mapleader = ","

" Remaping esc
imap jj <esc>

" Bind nohl
" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave command
noremap <Leader>w :update<CR>

" Quick quit command
noremap <Leader>q :quit<CR>

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w+<movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w+<movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" map sort function to a key
" awesome on ordering imports on python
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove tool bar
:set guioptions-=r  "remove right-hand scroll bar

" Show whitespace
" MUST be inserted BEFORE the color scheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" ---------------
" Color
" ---------------
set background=dark
colorscheme jellybeans
" Force 256 color mode if available
if $TERM =~ "-256color"
   set t_Co=256
endif

" Enable syntax highlighting
" You need to reload this for the change to be applied
filetype off
filetype plugin indent on
syntax enable

" Showing line numbers and length
set number " show line number
set tw=79  " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t  " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABS but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile
