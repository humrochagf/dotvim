# dotvim

This is my .vim folder working with [Vundle](https://github.com/gmarik/vundle).

## Installation

1. Clone the repo with `git clone https://github.com/humrochagf/dotvim ~/.vim`
2. `cd ~/.vim`
3. `ln vimrc ~/.vimrc` to make the .vimrc link on your home.
4. Install [Vundle](https://github.com/gmarik/vundle) using `git clone http://github.com/gmarik/vundle.git bundle/vundle`
5. `vim +BundleInstall` to install all of the plugins.
6. Enjoy!

## Plugin List

* [vim-powerline](https://github.com/Lokaltog/vim-powerline) - The ultimate vim statusline utility. DEPRECATED in favor of Lokaltog/powerline.
* [nerdtree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
* [jellybeans.vim](https://github.com/nanotech/jellybeans.vim) - A colorful, dark color scheme for Vim.
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter) - Vim plugin for easy commenting.
* [vim-fugitive](https://github.com/tpope/vim-fugitive) - A Git wrapper.
* [supertab](https://github.com/ervandew/supertab) - Perform all your vim insert mode completions with Tab.
* [ctrlp.vim](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder.
* [jedi-vim](https://github.com/davidhalter/jedi-vim) - A VIM binding to the awesome autocompletion library Jedi.
* [linters.vim](https://github.com/maelstrom/linters.vim) - Check your code for lint as you write.
* [vim-latex](https://github.com/jcf/vim-latex) - Plugin for making your latex life easy.

## Plugin Installation / Requirements

* [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be installed.
* [jedi-vim](https://github.com/davidhalter/jedi-vim) Requires jedi python package.
* [linters.vim](https://github.com/maelstrom/linters.vim) Requires the linter applications to work, right now I am only using with pep8 python package.
* [vim-latex](https://github.com/jcf/vim-latex) Requires latex package and works fine with texlive and latexmk packages.
