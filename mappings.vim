" ========
" Mappings
" ========

" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=","


" ----------------
" Regular Mappings
" ----------------

" Remapping esc
imap jj <esc>

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $

" Create newlines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

" Bind nohl
" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap


" ---------------
" Window Movement
" ---------------

" Here's a visual guide for moving between window splits.
"   4 Window Splits
"   --------
"   g1 | g2
"   ---|----
"   g3 | g4
"   -------
"
"   6 Window Splits
"   -------------
"   g1 | gt | g2
"   ---|----|----
"   g3 | gb | g4
"   -------------
nnoremap <silent> gh :wincmd h<CR>
nnoremap <silent> gj :wincmd j<CR>
nnoremap <silent> gk :wincmd k<CR>
nnoremap <silent> gl :wincmd l<CR>
" Upper left window
nnoremap <silent> g1 :wincmd t<CR>
" Upper right window
nnoremap <silent> g2 :wincmd b<Bar>:wincmd k<CR>
" Lower left window
nnoremap <silent> g3 :wincmd t<Bar>:wincmd j<CR>
" Lower right window
nnoremap <silent> g4 :wincmd b<CR>

" Top Middle
nnoremap <silent> gt g2<Bar>:wincmd h<CR>
" Bottom Middle
nnoremap <silent> gb g3<Bar>:wincmd l<CR>

" Previous Window
nnoremap <silent> gp :wincmd p<CR>
" Equal Size Windows
nnoremap <silent> g= :wincmd =<CR>
" Swap Windows
nnoremap <silent> gx :wincmd x<CR>


" ---------------
" Leader Mappings
" ---------------

" Toggle spelling mode with ,s
nnoremap <silent> <leader>s :set spell!<CR>

" Quicksave command
noremap <Leader>w :update<CR>

" Quick quit command
noremap <Leader>q :quit<CR>

" easier moving between tabs
map <Leader>h <esc>:tabprevious<CR>
map <Leader>l <esc>:tabnext<CR>

" map sort function to a key
" awesome on ordering imports on python
vnoremap <Leader>s :sort<CR>

" Improved copy/paste
noremap <Leader>y "+y
noremap <Leader>p "+p
