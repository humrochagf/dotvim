" =============================================
" Regular Vim Configuration (No Plugins Needed)
" =============================================

" -----
" Color
" -----
set background=dark
colorscheme ir_black
" ---------------------------
" Encoding and Spell Checking
" ---------------------------
set encoding=utf-8
set spelllang=pt,en

" --
" UI
" --
set title           " swap terminal title
set cmdheight=2     " Make the command area two lines high
set noshowmode      " Don't show the mode since Powerline shows it
set ruler           " Ruler on
set number          " Show line number
set tw=79           " Width of document (used by gd)
set nowrap          " Don't automatically wrap on load
set fo-=t           " Don't automatically wrap text when typing
set colorcolumn=80  " Color the 80th column differently as a wrapping guide.

" GVim configuration
if has("gui_running")
    set guioptions-=T " hide tool bar
    set guioptions-=m " hide menu bar
    set guioptions-=r " hide right scrollbar
    set guioptions-=b " hide bottom scrollbar
    set guifont=Inconsolata-dz\ for\ Powerline\ 11

" be cooler while using the cli version of VIM
else
    set t_Co=256

" seems like this makes the window smoother in the cli version
    set ttyfast
endif

" ---------
" Behaviors
" ---------
syntax enable
set nobackup            " Disable backup
set nowritebackup
set noswapfile          " Disable swap
set history=700
set undolevels=700
set iskeyword+=\$,-     " Add extra characters that are valid parts of variables
set clipboard+=unnamed  " Yanks go on clipboard instead
set hidden              " Change buffer - without saving
set autoread            " Automatically reload changes if detected
set autowrite           " Writes on make/shell commands
set gdefault            " This makes search/replace global by default
set switchbuf=useopen   " Switch to an existing buffer if one exists
set scrolloff=3          "Keep three lines below the last line when scrolling

" -----------
" Text Format
" -----------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set cindent
set backspace=indent,eol,start  " Delete everything with backspace

" ---------
" Searching
" ---------
set hlsearch
set incsearch
set ignorecase
set smartcase

" ------
" Visual
" ------
set showmatch       " Show matching brackets
set matchtime=2     " How many tenths of a second to blink
set list
" Reset listchars
set listchars=""
set listchars+=tab:\|-
" Show trailing spaces as dots
set listchars+=trail:.
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U
