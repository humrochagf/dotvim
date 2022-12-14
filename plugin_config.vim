" ====================
" Plugin Configuration
" ====================

" Lightline {

    set laststatus=2

    if has('nvim')
        let lightline_colorscheme = 'catppuccin'
    else
        let lightline_colorscheme = 'catppuccin_macchiato'
    endif

    let g:lightline = {
        \ 'colorscheme': lightline_colorscheme,
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
    let NERDTreeIgnore = ['\.py[cod]$', '^__pycache__$', '^.mypy_cache$', '^.pytest_cache$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$', '^node_modules$']
    let NERDTreeChDirMode = 0
    let NERDTreeQuitOnOpen = 1
    let NERDTreeMouseMode = 2
    let NERDTreeShowHidden = 1
    let NERDTreeKeepTreeInNewTab = 1
    let g:nerdtree_tabs_open_on_gui_startup = 0

" }

" ALE {

    let g:ale_disable_lsp = 1

    let g:ale_linters = {
    \ 'cs': ['OmniSharp']
    \}

" }

" Coc {

    " Some servers have issues with backup files, see #649.
    set nobackup
    set nowritebackup

    " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
    " delays and poor user experience.
    set updatetime=300

    " Always show the signcolumn, otherwise it would shift the text each time
    " diagnostics appear/become resolved.
    set signcolumn=yes

    " Use tab for trigger completion with characters ahead and navigate.
    " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
    " other plugin before putting this into your config.
    inoremap <silent><expr> <TAB>
          \ coc#pum#visible() ? coc#pum#next(1):
          \ CheckBackspace() ? "\<Tab>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

    " Make <CR> to accept selected completion item or notify coc.nvim to format
    " <C-g>u breaks current undo, please make your own choice.
    inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                                  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

    function! CheckBackspace() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " Use <c-space> to trigger completion.
    if has('nvim')
      inoremap <silent><expr> <c-space> coc#refresh()
    else
      inoremap <silent><expr> <c-@> coc#refresh()
    endif

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
    nnoremap <silent> K :call ShowDocumentation()<CR>

    function! ShowDocumentation()
      if CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
      else
        call feedkeys('K', 'in')
      endif
    endfunction

    " Highlight the symbol and its references when holding the cursor.
    autocmd CursorHold * silent call CocActionAsync('highlight')

    " Symbol renaming.
    nmap <leader>rn <Plug>(coc-rename)

    " Formatting selected code.
    xmap <leader>f  <Plug>(coc-format-selected)
    nmap <leader>f  <Plug>(coc-format-selected)

    augroup mygroup
      autocmd!
      " Setup formatexpr specified filetype(s).
      autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
      " Update signature help on jump placeholder.
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end

    " Applying codeAction to the selected region.
    " Example: `<leader>aap` for current paragraph
    xmap <leader>a  <Plug>(coc-codeaction-selected)
    nmap <leader>a  <Plug>(coc-codeaction-selected)

    " Remap keys for applying codeAction to the current buffer.
    nmap <leader>ac  <Plug>(coc-codeaction)
    " Apply AutoFix to problem on the current line.
    nmap <leader>qf  <Plug>(coc-fix-current)

    " Run the Code Lens action on the current line.
    nmap <leader>cl  <Plug>(coc-codelens-action)

    " Map function and class text objects
    " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
    xmap if <Plug>(coc-funcobj-i)
    omap if <Plug>(coc-funcobj-i)
    xmap af <Plug>(coc-funcobj-a)
    omap af <Plug>(coc-funcobj-a)
    xmap ic <Plug>(coc-classobj-i)
    omap ic <Plug>(coc-classobj-i)
    xmap ac <Plug>(coc-classobj-a)
    omap ac <Plug>(coc-classobj-a)

    " Remap <C-f> and <C-b> for scroll float windows/popups.
    if has('nvim-0.4.0') || has('patch-8.2.0750')
      nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
      nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
      inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
      inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
      vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
      vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
    endif

    " Use CTRL-S for selections ranges.
    " Requires 'textDocument/selectionRange' support of language server.
    nmap <silent> <C-s> <Plug>(coc-range-select)
    xmap <silent> <C-s> <Plug>(coc-range-select)

    " Add `:Format` command to format current buffer.
    command! -nargs=0 Format :call CocActionAsync('format')

    " Add `:Fold` command to fold current buffer.
    command! -nargs=? Fold :call     CocAction('fold', <f-args>)

    " Add `:OR` command for organize imports of the current buffer.
    command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

    " Add (Neo)Vim's native statusline support.
    " NOTE: Please see `:h coc-status` for integrations with external plugins that
    " provide custom statusline: lightline.vim, vim-airline.
    set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

    " Mappings for CoCList
    " Show all diagnostics.
    nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
    " Manage extensions.
    nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
    " Show commands.
    nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
    " Find symbol of current document.
    nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
    " Search workspace symbols.
    nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
    " Do default action for next item.
    nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
    " Do default action for previous item.
    nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
    " Resume latest coc list.
    nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

    " *** Custom Configs ***

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

" Presenting.vim {

    au FileType markdown let b:presenting_slide_separator = '\v(^|\n)\-{3,}'

" }

" IndentLine {

    let g:vim_json_conceal = 0

" }

" OmniSharp {

    let g:OmniSharp_server_use_net6 = 1
    let g:OmniSharp_popup_position = 'peek'

    if has('nvim')
        let g:OmniSharp_popup_options = {
        \ 'winblend': 30,
        \ 'winhl': 'Normal:Normal,FloatBorder:ModeMsg',
        \ 'border': 'rounded'
        \}
    else
        let g:OmniSharp_popup_options = {
        \ 'highlight': 'Normal',
        \ 'padding': [0],
        \ 'border': [1],
        \ 'borderchars': ['─', '│', '─', '│', '╭', '╮', '╯', '╰'],
        \ 'borderhighlight': ['ModeMsg']
        \}
    endif

    let g:OmniSharp_popup_mappings = {
    \ 'sigNext': '<C-n>',
    \ 'sigPrev': '<C-p>',
    \ 'pageDown': ['<C-f>', '<PageDown>'],
    \ 'pageUp': ['<C-b>', '<PageUp>']
    \}

    " Override Coc in favor of OmniSharp in C# files
    augroup omnisharp_commands
      autocmd!

      autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
      autocmd FileType cs nnoremap <silent> <buffer> K <Plug>(omnisharp_documentation)
      " ... other omnisharp-vim mappings
    augroup END

" }
