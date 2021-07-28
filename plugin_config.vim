" ====================
" Plugin Configuration
" ====================

" Lightline {

    set laststatus=2

    let g:lightline = {
        \ 'colorscheme': 'gruvbox8',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'virtualenv', 'filename', 'fugitive' ] ]
        \ },
        \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
        \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
        \ 'component': {
        \   'fugitive': '%{exists("*fugitive#head")&&strlen(fugitive#head())?'.
        \               '"\ue0a0 ".fugitive#head():""}',
        \   'virtualenv': '%{strlen(virtualenv#statusline())?virtualenv#statusline():"(No Env)"}'
        \ },
        \ 'component_visible_condition': {
        \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())',
        \ },
        \ }

" }

" NerdTree {

    map <C-e> :NERDTreeTabsToggle<CR>

    let NERDTreeShowBookmarks = 1
    let NERDTreeIgnore = ['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
    let NERDTreeChDirMode = 0
    let NERDTreeQuitOnOpen = 1
    let NERDTreeMouseMode = 2
    let NERDTreeShowHidden = 1
    let NERDTreeKeepTreeInNewTab = 1
    let g:nerdtree_tabs_open_on_gui_startup = 0

" }

" Coc {

    " use <c-space>for trigger completion
    if has('nvim')
        inoremap <silent><expr> <c-space> coc#refresh()
    else
        if !LINUX()
            inoremap <silent><expr> <c-@> coc#refresh()
        else
            inoremap <silent><expr> <NUL> coc#refresh()
        endif
    endif

    " use <tab> for trigger completion and navigate to the next complete item
    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <Tab>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()

    " Tab navigation backwards
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    " Use `[g` and `]g` to navigate diagnostics
    " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
    nmap <silent> [g <Plug>(coc-diagnostic-prev)
    nmap <silent> ]g <Plug>(coc-diagnostic-next)

    " GoTo code navigation.
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    " Use K to show documentation in preview window.
    nnoremap <silent> K :call <SID>show_documentation()<CR>

    function! s:show_documentation()
        if (index(['vim','help'], &filetype) >= 0)
            execute 'h '.expand('<cword>')
        elseif (coc#rpc#ready())
            call CocActionAsync('doHover')
        else
            execute '!' . &keywordprg . " " . expand('<cword>')
        endif
    endfunction

    " Highlight the symbol and its references when holding the cursor.
    autocmd CursorHold * silent call CocActionAsync('highlight')

    " Symbol renaming.
    nmap <leader>rn <Plug>(coc-rename)

    " Fix floating menu background
    hi Pmenu guifg=#ebdbb2 guibg=#403a37 gui=NONE cterm=NONE

" }

" Ultisnips {

    " Trigger configuration. Do not use <tab>
    let g:UltiSnipsExpandTrigger = "<C-o>"
    let g:UltiSnipsJumpForwardTrigger = "<C-b>"
    let g:UltiSnipsJumpBackwardTrigger = "<C-z>"

" }

" TagBar {

    nnoremap <C-t> :TagbarToggle<CR>

" }

" Vim Isort {

    let g:vim_isort_map = '<C-i>'

" }

" auto-pairs {

    let g:AutoPairsFlyMode = 1
    let g:AutoPairsShortcutBackInsert = '<C-b>'
    let g:AutoPairsShortcutFastWrap = '<C-w>'
    let g:AutoPairsShortcutToggle = '<C-p>'
    let g:AutoPairsShortcutJump = ''

" }

" vim-polyglot {

    " markdown
    let g:vim_markdown_conceal = 0
    let g:vim_markdown_conceal_code_blocks = 0

" }

"  fzf {

    "  File finder
    nnoremap <C-f> :Files<CR>

"  }
