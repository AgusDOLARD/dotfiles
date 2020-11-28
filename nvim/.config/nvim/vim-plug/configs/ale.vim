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
nmap <silent> <leader>[ <Plug>(ale_previous_wrap)
nmap <silent> <leader>] <Plug>(ale_next_wrap)
