" Startify
let g:startify_custom_header = []
let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   Files']                        },
            \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
            \ { 'type': 'sessions',  'header': ['   Sessions']                     },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
            \ ]
let g:startify_bookmarks = [
            \ '~/.config/nvim/init.vim'  
            \ ]
