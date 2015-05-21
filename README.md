# dotvim

This is my .vim folder setup.

The plugins are managed by [NeoBundle](https://github.com/Shougo/neobundle.vim).

## Installation

1. Clone the repo with `git clone https://github.com/humrochagf/dotvim ~/.vim`
2. `cd ~/.vim`
3. `ln -s ~/.vim/vimrc ~/.vimrc` to make the .vimrc link on your home.
4. Install [NeoBundle](https://github.com/Shougo/neobundle.vim) with `curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh`
5. `vim +NeoBundleInstall` to install all of the plugins.
6. Enjoy!

**Obs.:** With neovim point vimrc to .nvimrc, and for python support run `pip install neovim` on your system or virtualenv.

## Plugin List

That is the list of plugins used on my config.

### Visual and Cosmetics

* [flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes) - The ultimate colorscheme pack.
* [oblitum/rainbow](https://github.com/oblitum/rainbow) - Color alternation on nested parenthesis.
* [gorodinskiy/vim-coloresque](https://github.com/gorodinskiy/vim-coloresque) - Color preview on color codes.
* [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine) - Visual indentation indication.
* [godlygeek/csapprox](https://github.com/godlygeek/csapprox) - Color normalization between terminal and gui.

### Interface and Navigation

* [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) - Lightweigth status bar.
* [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree) - File tree explorer.
* [jistr/vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs) - Make NERDTree independent of tabs.
* [majutsushi/tagbar](https://github.com/majutsushi/tagbar) - A class outline viewer.

### Utility

* [tpope/vim-surround](https://github.com/tpope/vim-surround) - Surroundings handling shortcuts.
* [Townk/vim-autoclose](https://github.com/Townk/vim-autoclose) - Auto-close matching surroundings.
* [Lokaltog/vim-easymotion](https://github.com/Lokaltog/vim-easymotion) - Faster code navigation.
* [ervandew/supertab](https://github.com/ervandew/supertab) - Awesome tab insert completion.
* [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter) - Easy comments handling.
* [kien/ctrlp.vim](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder.

### Git

* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) - Git commands inside vim.
* [mhinz/vim-signify](https://github.com/mhinz/vim-signify) - Git meaningful alteration indicators.

### Code Completion

* [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe) - Powerful code completion.
* [SirVer/ultisnips](https://github.com/SirVer/ultisnips) - Code snippets tool.
* [honza/vim-snippets](https://github.com/honza/vim-snippets) - Snippets packages.

### Python

* [jmcantrell/vim-virtualenv](https://github.com/jmcantrell/vim-virtualenv) - Virtualenv handler.
* [hdima/python-syntax](https://github.com/hdima/python-syntax) - Improved python syntax highlighting.
* [hynek/vim-python-pep8-indent](https://github.com/hynek/vim-python-pep8-indent) - Pep8 code indentation.
* [vim-scripts/django.vim](https://github.com/vim-scripts/django.vim) - Django templates code highlighting.

### Javascript

* [elzr/vim-json](https://github.com/elzr/vim-json) - Improved JSON highlighting.
* [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript) - Better javascript highlight and syntax.

### HTML

* [amirh/HTML-AutoCloseTag](https://github.com/amirh/HTML-AutoCloseTag) - HTML automatic tag closing.
* [hail2u/vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax) - Add CSS3 syntax support.

### Markdown

* [tpope/vim-markdown](https://github.com/tpope/vim-markdown) - Add Markdown syntax support.

## Plugin Installation / Requirements

* [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) Requires font patching.
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) and [mhinz/vim-signify](https://github.com/mhinz/vim-signify) Requires Git to be installed.
* [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Requires plugin compilation.
