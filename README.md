# dotvim

This is my .vim folder setup.

The plugins are managed by [VIM-Plug](https://github.com/junegunn/vim-plug).

## Installation

1. Clone the repo with `git clone git@github.com:humrochagf/dotvim.git ~/.vim`
2. `cd ~/.vim`
3. `ln -s ~/.vim/vimrc ~/.vimrc` to make the .vimrc link on your home.
4. Install [VIM-Plug](https://github.com/junegunn/vim-plug) with `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
5. `vim +PlugInstall` to install all of the plugins.
6. Enjoy!

**Obs.:** With neovim point vimrc to .nvimrc, and for python support run `pip install neovim` on your system or virtualenv.

## Plugin List

That is the list of plugins used on my config.

### Visual and Cosmetics

* [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine) - Visual indentation indication.
* [lifepillar/vim-gruvbox8](https://github.com/lifepillar/vim-gruvbox8) - Gruvbox8 color scheme, performance optimized version of gruvbox.
* [gorodinskiy/vim-coloresque](https://github.com/gorodinskiy/vim-coloresque) - Color preview on color codes.

### Interface and Navigation

* [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) - Lightweight status bar.
* [jistr/vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs) - Make NERDTree independent of tabs.
* [majutsushi/tagbar](https://github.com/majutsushi/tagbar) - A class outline viewer.
* [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree) - File tree explorer.

### Utility

* [Shougo/vimproc](https://github.com/Shougo/vimproc) - Interactive command execution in Vim.
* [VincentCordobes/vim-translate](https://github.com/vincentcordobes/vim-translate) - Translation support inside vim.
* [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs) - Auto-close matching surroundings.
* [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter) - Easy comments handling.
* [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot) - Language improvements.
* [junegunn/fzf](https://github.com/junegunn/fzf) - A command-line fuzzy finder.
* [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim) - Vim fzf integration.

### Git

* [mhinz/vim-signify](https://github.com/mhinz/vim-signify) - Git meaningful alteration indicators.
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) - Git commands inside vim.

### Code Completion

* [SirVer/ultisnips](https://github.com/SirVer/ultisnips) - Code snippets tool.
* [honza/vim-snippets](https://github.com/honza/vim-snippets) - Snippets packages.
* [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim) - Language server based code completion.

### Lint

* [w0rp/ale](https://github.com/w0rp/ale) - Asynchronous Lint Engine.

### C/C++

* [derekwyatt/vim-fswitch](https://github.com/derekwyatt/vim-fswitch) - Source/Header file quick switch.

### C#

* [OmniSharp/omnisharp-vim](https://github.com/OmniSharp/omnisharp-vim) - OmniSharp C# language server.

### Python

* [fisadev/vim-isort](https://github.com/fisadev/vim-isort) - Python Import sorting
* [jmcantrell/vim-virtualenv](https://github.com/jmcantrell/vim-virtualenv) - Virtualenv handler.

### HTML

* [mattn/emmet-vim](https://github.com/mattn/emmet-vim) - Zencoding plugin.

## Plugin Installation / Requirements

* [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) Requires font patching.
* [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim) If you have [ag the silver searcher](https://github.com/ggreer/the_silver_searcher) installed it offers an utility tool for Ag search.
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) and [mhinz/vim-signify](https://github.com/mhinz/vim-signify) Requires Git to be installed.
* [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim) Requires node 12+ installed.
* [fisadev/vim-isort](https://github.com/fisadev/vim-isort) Requires isort from pip.
