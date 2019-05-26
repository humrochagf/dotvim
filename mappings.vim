" ========
" Mappings
" ========

" Leader Key {

    " Note: This line MUST come before any <leader> mappings
    let mapleader=","

" }

" Base Mappings {

    " Remapping esc
    imap jj <C-c>

    " Create newlines without entering insert mode
    nnoremap go o<Esc>k
    nnoremap gO O<Esc>j

    " remap U to <C-r> for easier redo
    " from http://vimbits.com/bits/356
    nnoremap U <C-r>

    " easier moving of code blocks
    vnoremap < <gv
    vnoremap > >gv

    " Shortcuts
    " Change Working Directory to that of the current file
    cmap cwd lcd %:p:h
    cmap cd. lcd %:p:h

    " Allow using the repeat operator with a visual selection (!)
    " http://stackoverflow.com/a/8064607/127816
    vnoremap . :normal .<CR>

    " For when you forget to sudo.. Really Write the file.
    cmap w!! w !sudo tee % >/dev/null

    " Easier horizontal scrolling
    map zl zL
    map zh zH

" }

" Window Movement {

    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

" }

" Leader Mappings {

    " Code folding options
    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=4<CR>
    nmap <leader>f5 :set foldlevel=5<CR>
    nmap <leader>f6 :set foldlevel=6<CR>
    nmap <leader>f7 :set foldlevel=7<CR>
    nmap <leader>f8 :set foldlevel=8<CR>
    nmap <leader>f9 :set foldlevel=9<CR>

    " Toggle en spell
    nnoremap <silent> <leader>se :setlocal spell! spelllang=en_us<CR>
    " Toggle pt spell
    nnoremap <silent> <leader>sp :setlocal spell! spelllang=pt_br<CR>
    " Toggle fr spell
    nnoremap <silent> <leader>sf :setlocal spell! spelllang=fr<CR>

    " Quicksave command
    noremap <Leader>w :update<CR>

    " Quick quit command
    noremap <Leader>q :quit<CR>

    " Bind nohl
    " Removes highlight of your last search
    noremap <Leader><space> :nohlsearch<CR>

    " map sort function to a key
    " awesome on ordering imports on python
    vnoremap <Leader>ss :sort<CR>

    " Improved copy/paste
    noremap <Leader>y "+y
    noremap <Leader>p "+p
    noremap <Leader>0p "0p

    " UPPER and lower on normal mode
    nnoremap <Leader>U viwU
    nnoremap <Leader>u viwu

    " remove trailing whitespaces
    noremap <Leader>sd :call StripTrailingWhitespace()<CR>

    " toggle line fold
    noremap <Leader>lf :call ToggleLineFold()<CR>

    " Some helpers to edit mode
    " http://vimcasts.org/e/14
    cnoremap %% <C-R>=expand('%:h').'/'<cr>
    map <leader>ew :e %%
    map <leader>es :sp %%
    map <leader>ev :vsp %%
    map <leader>et :tabe %%

    " Adjust viewports to the same size
    map <Leader>= <C-w>=

    " Map <Leader>ff to display all lines with keyword under cursor
    " and ask which one to jump to
    nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" }

" auto text break at insert mode {
    " automatic text breaks on punctuation for smarter undo at text editing
    " thanks to https://twitter.com/vimgifs/status/913390282242232320
    inoremap . .<C-g>u
    inoremap ? ?<C-g>u
    inoremap ! !<C-g>u
    inoremap , ,<C-g>u
" }
