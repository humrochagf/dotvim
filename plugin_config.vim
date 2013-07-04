" ====================
" Plugin Configuration
" ====================

" -------------
" vim-powerline
" -------------
set laststatus=2

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
" NERDTree
" --------
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

" --------
" supertab
" --------
let g:SuperTabDefaultCompletionType = "context"

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
