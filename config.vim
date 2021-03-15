" =========================
" Initial Vim Configuration
" =========================

" General {

    filetype plugin indent on   " Automatically detect file types.
    syntax on                   " Syntax highlighting
    set mouse=a                 " Automatically enable mouse usage
    set mousehide               " Hide the mouse cursor while typing
    set encoding=utf-8

    set nobackup            " Disable backup
    set nowritebackup
    set noswapfile          " Disable swap

    if has('clipboard')
        if has('unnamedplus')  " When possible use + register for copy-paste
            set clipboard=unnamed,unnamedplus
        else         " On mac and Windows, use * register for copy-paste
            set clipboard=unnamed
        endif
    endif

    set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
    set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
    set virtualedit=onemore             " Allow for cursor beyond last character
    set history=1000                    " Store a ton of history (default is 20)
    "set spell                           " Spell checking on
    "set spelllang=pt,en
    au! BufNewFile,BufRead * let b:spell_language="brasileiro"
    let spell_language_list="brasileiro,american,castellano"
    set hidden                          " Allow buffer switching without saving
    set iskeyword-=.                    " '.' is an end of word designator
    set iskeyword-=#                    " '#' is an end of word designator
    set iskeyword-=-                    " '-' is an end of word designator

    " Instead of reverting the cursor to the last position in the buffer, we
    " set it to the first line when editing a git commit message
    au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" }

" GUI Settings {

    " GVIM- (here instead of .gvimrc)
    if has('gui_running')
        set guioptions-=T           " Remove the toolbar
        set lines=40                " 40 lines of text instead of 24

        if LINUX() && has("gui_running")
            set guifont=InconsolataGo\ Nerd\ Font\ Mono\ Regular\ 13,Andale\ Mono\ Regular\ 12,Menlo\ Regular\ 11,Consolas\ Regular\ 12,Courier\ New\ Regular\ 14
        elseif OSX() && has("gui_running")
            set guifont=InconsolataGo\ Nerd\ Font\ Mono\ Regular:h13,Andale\ Mono\ Regular:h12,Menlo\ Regular:h11,Consolas\ Regular:h12,Courier\ New\ Regular:h14
        elseif WINDOWS() && has("gui_running")
            set guifont=InconsolataGo\ NF:h13,Andale_Mono:h11,Menlo:h11,Consolas:h11,Courier_New:h11
        endif
    endif

" }

" UI {

    set termguicolors
    set background=dark

    colorscheme gruvbox8

    highlight clear SignColumn      " SignColumn should match background
    highlight clear LineNr          " Current line number row will have same background color in relative mode

    set colorcolumn=80              " Color the 80th column differently as a wrapping guide.
    set tabpagemax=15               " Only show 15 tabs
    set showmode                    " Display the current mode
    set backspace=indent,eol,start  " Backspace for dummies
    set linespace=0                 " No extra spaces between rows
    set nu                          " Line numbers on
    set showmatch                   " Show matching brackets/parenthesis
    set incsearch                   " Find as you type search
    set hlsearch                    " Highlight search terms
    set winminheight=0              " Windows can be 0 line high
    set ignorecase                  " Case insensitive search
    set smartcase                   " Case sensitive when uc present
    set wildmenu                    " Show list instead of just completing
    set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
    set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
    set scrolljump=5                " Lines to scroll when cursor leaves screen
    set scrolloff=3                 " Minimum lines to keep above and below cursor
    set list
    " Reset listchars
    set listchars=""
    " Show tabs as |---
    set listchars+=tab:\|-
    " Show trailing spaces as dots
    set listchars+=trail:.
    " The character to show in the last column when wrap is off and the line
    " continues beyond the right of the screen
    set listchars+=extends:>
    " The character to show in the last column when wrap is off and the line
    " continues beyond the right of the screen
    set listchars+=precedes:<

" }

" Formatting {

    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)

    autocmd FileType c,cpp,css,django,elm,go,haskell,html,html5,htmldjango,java,javascript,json,perl,php,puppet,python,rust,sass,scss,stylus,twig,typescript,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()
    autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
    autocmd FileType css,django,haskell,html,html5,htmldjango,javascript,json,php,puppet,ruby,sass,scss,stylus,tex,typescript,xml,yml,toml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

    autocmd BufNewFile,BufRead *.coffee set filetype=coffee

    " Workaround vim-commentary for Haskell
    autocmd FileType haskell setlocal commentstring=--\ %s
    " Workaround broken colour highlighting in Haskell
    autocmd FileType haskell,rust setlocal nospell

" }
