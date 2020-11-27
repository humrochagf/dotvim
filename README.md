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
* [flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes) - The ultimate colorscheme pack.
* [godlygeek/csapprox](https://github.com/godlygeek/csapprox) - Color normalization between terminal and gui.
* [gorodinskiy/vim-coloresque](https://github.com/gorodinskiy/vim-coloresque) - Color preview on color codes.
* [oblitum/rainbow](https://github.com/oblitum/rainbow) - Color alternation on nested parenthesis.

### Interface and Navigation

* [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) - Lightweigth status bar.
* [jistr/vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs) - Make NERDTree independent of tabs.
* [majutsushi/tagbar](https://github.com/majutsushi/tagbar) - A class outline viewer.
* [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree) - File tree explorer.

### Utility

* [Shougo/vimproc](https://github.com/Shougo/vimproc) - Interactive command execution in Vim.
* [VincentCordobes/vim-translate](https://github.com/vincentcordobes/vim-translate) - Translation support inside vim.
* [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs) - Auto-close matching surroundings.
* [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter) - Easy comments handling.
* [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot) - Language improvements.

### Git

* [mhinz/vim-signify](https://github.com/mhinz/vim-signify) - Git meaningful alteration indicators.
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) - Git commands inside vim.

### Code Completion

* [SirVer/ultisnips](https://github.com/SirVer/ultisnips) - Code snippets tool.
* [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe) - Powerful code completion.
* [honza/vim-snippets](https://github.com/honza/vim-snippets) - Snippets packages.

### Lint

* [w0rp/ale](https://github.com/w0rp/ale) - Asynchronous Lint Engine.

### Python

* [fisadev/vim-isort](https://github.com/fisadev/vim-isort) - Python Import sorting
* [jmcantrell/vim-virtualenv](https://github.com/jmcantrell/vim-virtualenv) - Virtualenv handler.

### Elm

* [lambdatoast/elm.vim](https://github.com/lambdatoast/elm.vim) - Elm code highlighting and utility

### Rust

* [rust-lang/rust.vim](https://github.com/rust-lang/rust.vim) - Rust code highlighting and utility

### TypeScript/Angular

* [Quramy/tsuquyomi](https://github.com/Quramy/tsuquyomi) - Make your Vim a TypeScript IDE.
* [Quramy/vim-js-pretty-template](https://github.com/Quramy/vim-js-pretty-template) - Highlights JavaScript's Template Strings in other FileType syntax rule.

### HTML

* [mattn/emmet-vim](https://github.com/mattn/emmet-vim) - Zencoding plugin.

## Plugin Installation / Requirements

* [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Requires plugin compilation.
* [fisadev/vim-isort](https://github.com/fisadev/vim-isort) Requires isort from pip.
* [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) Requires font patching.
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) and [mhinz/vim-signify](https://github.com/mhinz/vim-signify) Requires Git to be installed.
* [lambdatoast/elm.vim](https://github.com/lambdatoast/elm.vim) - Requires Elm and its tools, you can install by running `npm install -g elm elm-test elm-oracle elm-format`
