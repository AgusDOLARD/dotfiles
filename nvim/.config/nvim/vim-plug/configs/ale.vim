" ALE
let g:ale_linters = {
            \   'javascript': ['eslint'],
            \   'typescript': ['eslint'],
            \   'vue': ['eslint'],
            \   'json': ['jsonlint'],
            \   'python': ['flake8'],
            \   'dart': ['dartanalyzer'],
            \   'haskell': ['hlint'],
            \   'c': ['clangtidy'],
            \   'vim': ['vint'] 
            \ }
let g:ale_fixers = {
            \   'javascript': ['prettier'],
            \   'typescript': ['prettier'],
            \   'vue': ['prettier'],
            \   'json': ['prettier'],
            \   'css': ['prettier'],
            \   'c': ['clangtidy'],
            \   '*': ['remove_trailing_lines'],
            \   'python': ['black'],
            \   'dart': ['dartfmt'],
            \   'haskell': ['brittany'],
            \ }
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --print-width 80 --trailing-comma none --arrow-parens always --tab-width 4 --no-semi'
nmap <silent> <leader>[ <Plug>(ale_previous_wrap)
nmap <silent> <leader>] <Plug>(ale_next_wrap)
