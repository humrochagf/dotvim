" ====================
" Plugin Configuration
" ====================

" -------------
" vim-powerline
" -------------
set rtp+=$HOME/.vim/bundle/powerline/powerline/bindings/vim/
set laststatus=2

" --------
" NERDTree
" --------
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

" ---------
" solarized
" ---------
if !has("gui_running")
    let g:solarized_termtrans=0
else
    let g:solarized_termtrans=1
endif

" ---------------
" Fugitive
" ---------------
nnoremap <Leader>gc :Gcommit -v<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nnoremap <Leader>gu :Git pull<CR>
nnoremap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nnoremap <Leader>gx :wincmd h<CR>:q<CR>
" Start git command
nnoremap <leader>gi :Git<space>
" Undo the last commit
command! Gcundo :Git reset HEAD~1

" --------
" supertab
" --------
let g:SuperTabDefaultCompletionType = "context"

" -----
" ctrlp
" -----
" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = ''
" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" --------
" jedi-vim
" --------
let g:jedi#related_names_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" ---------
" Vim-Latex
" ---------
let g:Tex_DefaultTargetFormat = 'pdf'
