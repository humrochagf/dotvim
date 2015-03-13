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

## Plugin List

* [vim-airline](https://github.com/bling/vim-airline) - The lightweight version of powerline.
* [nerdtree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
* [vim-irblack](https://github.com/wesgibbs/vim-irblack) - My favorite theme for vim.
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter) - Vim plugin for easy commenting.
* [vim-fugitive](https://github.com/tpope/vim-fugitive) - A Git wrapper.
* [supertab](https://github.com/ervandew/supertab) - Perform all your vim insert mode completions with Tab.
* [ctrlp.vim](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder.
* [linters.vim](https://github.com/maelstrom/linters.vim) - Check your code for lint as you write.
* [vim-latex-suite](https://github.com/gerw/vim-latex-suite) - An improved version of latex-suite
* [jedi-vim](https://github.com/davidhalter/jedi-vim) - Using the jedi autocompletion library for VIM.

## Plugin Installation / Requirements

* [vim-airline](https://github.com/bling/vim-airline) Requires you to install a [custom fonts] (https://github.com/Lokaltog/powerline-fonts) of your choice.
* [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be installed.
* [linters.vim](https://github.com/maelstrom/linters.vim) Requires the linter applications to work, right now I am only using with pep8 python package.
* [vim-latex-suite](https://github.com/gerw/vim-latex-suite) Requires a latex compiler.
