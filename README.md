# dotvim

This is my .vim folder working with [Vundle](https://github.com/gmarik/vundle).

## Installation

1. Clone the repo with `git clone https://github.com/humrochagf/dotvim ~/.vim`
2. `cd ~/.vim`
3. `ln -s ~/.vim/vimrc ~/.vimrc` to make the .vimrc link on your home.
4. Install [Vundle](https://github.com/gmarik/vundle) using `git clone http://github.com/gmarik/vundle.git bundle/vundle`
5. `vim +BundleInstall +qall` to install all of the plugins.
6. `cd ~/.vim/bundle/YouCompleteMe`
7. `./install.sh --clang-completer` to install the YCM, make sure you have the python-dev package installed
8. Enjoy!

## Plugin List

* [powerline](https://github.com/Lokaltog/powerline) - The ultimate statusline/prompt utility.
* [nerdtree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
* [vim-irblack](https://github.com/wesgibbs/vim-irblack) - My favorite theme for vim.
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter) - Vim plugin for easy commenting.
* [vim-fugitive](https://github.com/tpope/vim-fugitive) - A Git wrapper.
* [supertab](https://github.com/ervandew/supertab) - Perform all your vim insert mode completions with Tab.
* [ctrlp.vim](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder.
* [linters.vim](https://github.com/maelstrom/linters.vim) - Check your code for lint as you write.
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) - A code-completion engine for Vim.
* [vim-latex-suite](https://github.com/gerw/vim-latex-suite) - An improved version of latex-suite

## Plugin Installation / Requirements

* [powerline](https://github.com/Lokaltog/powerline) Requires you to install a custom font of your choice wich the process is described on their docs.
* [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be installed.
* [linters.vim](https://github.com/maelstrom/linters.vim) Requires the linter applications to work, right now I am only using with pep8 python package.
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Requires python-dev package installed.
* [vim-latex-suite](https://github.com/gerw/vim-latex-suite) Requires a latex compiler.
