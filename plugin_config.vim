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

    map <C-e> :NERDTreeToggle<CR>

    let NERDTreeShowBookmarks = 1
    let NERDTreeIgnore = ['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
    let NERDTreeChDirMode = 0
    let NERDTreeQuitOnOpen = 1
    let NERDTreeMouseMode = 2
    let NERDTreeShowHidden = 1
    let NERDTreeKeepTreeInNewTab = 1
    let g:nerdtree_tabs_open_on_gui_startup = 0

" }

" ALE {

    let g:ale_cpp_ccls_init_options = {
    \   'cache': {
    \       'directory': '.ccls-cache/cache'
    \   }
    \ }

" }

" Coc {

    " use <c-space>for trigger completion
    if has('nvim') || !LINUX()
        inoremap <silent><expr> <c-space> coc#refresh()
    else
        inoremap <silent><expr> <NUL> coc#refresh()
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

" vim vs nvim pluggins {

    if has('nvim')

        " telescope {

            " Find files using Telescope command-line sugar.
            nnoremap <leader>ff <cmd>Telescope find_files<cr>
            nnoremap <leader>fg <cmd>Telescope live_grep<cr>
            nnoremap <leader>fb <cmd>Telescope buffers<cr>
            nnoremap <leader>fh <cmd>Telescope help_tags<cr>

            " Using Lua functions
            nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
            nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
            nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
            nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

        " }

    else

        "  fzf {

            " File finder
            nnoremap <leader>ff :Files<CR>

        "  }

    endif

" }

