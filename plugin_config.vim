" ====================
" Plugin Configuration
" ====================

" Lightline{

    set laststatus=2

    let g:lightline = {
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'fugitive', 'filename'] ]
        \ },
        \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
        \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
        \ 'component': {
        \   'fugitive': '%{exists("*fugitive#head")&&strlen(fugitive#head())?'.
        \               '"\ue0a0 ".fugitive#head():""}'
        \ },
        \ 'component_visible_condition': {
        \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
        \ },
        \ }

" }

" NerdTree {

    if isdirectory(expand("~/.vim/bundle/nerdtree"))
        map <C-e> <plug>NERDTreeTabsToggle<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>

        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=0
    endif

" }

" YouCompleteMe {

    let g:ycm_autoclose_preview_window_after_completion = 1

    nnoremap <C-y> :YcmForceCompileAndDiagnostics<cr>
    nnoremap <silent> <C-]> :YcmCompleter GoTo<CR>
    nnoremap <C-d> :YcmCompleter GoToDefinition<CR>

" }

" UltiSnips {

    let g:UltiSnipsExpandTrigger="<C-c>"
    let g:UltiSnipsJumpForwardTrigger="<C-x>"
    let g:UltiSnipsJumpBackwardTrigger="<C-z>"

    let g:UltiSnipsEditSplit="vertical"

" }

" Rainbow {

    au FileType c,cpp,objc,objcpp,python call rainbow#load()

    let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
    let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

" }

" TagBar {

    nmap <C-t> :TagbarToggle<CR>

" }

" Python-syntax {

    let python_highlight_all = 1

" }

" Fugitive {

    if isdirectory(expand("~/.vim/bundle/vim-fugitive/"))
        nnoremap <silent> <leader>gs :Gstatus<CR>
        nnoremap <silent> <leader>gd :Gdiff<CR>
        nnoremap <silent> <leader>gc :Gcommit<CR>
        nnoremap <silent> <leader>gb :Gblame<CR>
        nnoremap <silent> <leader>gl :Glog<CR>
        nnoremap <silent> <leader>gp :Git push<CR>
        nnoremap <silent> <leader>gr :Gread<CR>
        nnoremap <silent> <leader>gw :Gwrite<CR>
        nnoremap <silent> <leader>ge :Gedit<CR>
        " Mnemonic _i_nteractive
        nnoremap <silent> <leader>gi :Git add -p %<CR>
        nnoremap <silent> <leader>gg :SignifyToggle<CR>
    endif

"}
