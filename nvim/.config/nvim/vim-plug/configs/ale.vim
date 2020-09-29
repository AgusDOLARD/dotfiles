" ALE
let g:ale_linters = {
            \   'javascript': ['eslint'],
            \   'typescript': ['eslint'],
            \   'vue': ['eslint'],
            \   'json': ['jsonlint'],
            \   'python': ['flake8'],
            \   'haskell': ['hlint'],
            \   'vim': ['vint'] 
            \ }
let g:ale_fixers = {
            \   'javascript': ['prettier'],
            \   'typescript': ['prettier'],
            \   'vue': ['prettier'],
            \   'json': ['prettier'],
            \   'css': ['prettier'],
            \   '*': ['remove_trailing_lines'],
            \   'python': ['black'],
            \   'haskell': ['brittany'],
            \ }
let g:ale_fix_on_save = 1

nmap <silent> ( <Plug>(ale_previous_wrap)
nmap <silent> ) <Plug>(ale_next_wrap)
