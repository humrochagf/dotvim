" =============================== "
"            Vimrc file           "
"          Humberto Rocha         "
"  https://github.com/humrochagf  "
" =============================== "

" Environment {

    " Identify platform {
        silent function! OSX()
            return has('macunix')
        endfunction
        silent function! LINUX()
            return has('unix') && !has('macunix') && !has('win32unix')
        endfunction
        silent function! WINDOWS()
            return  (has('win16') || has('win32') || has('win64'))
        endfunction
    " }

    " Basics {
        set nocompatible        " Must be first line
        if !WINDOWS()
            set shell=/bin/sh
        endif
    " }

    " Windows Compatible {
        " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
        " across (heterogeneous) systems easier.
        if WINDOWS()
          set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
        endif
    " }

" }

" Plugin Activation {
    source ~/.vim/vundle.vim
" }

" General config {
    source ~/.vim/config.vim
"}

" Mapping config {
    source ~/.vim/mappings.vim
"}

" Plugin config {
    source ~/.vim/plugin_config.vim
"}
