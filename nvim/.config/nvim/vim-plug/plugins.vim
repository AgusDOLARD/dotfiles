call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'SirVer/ultisnips'
    Plug 'airblade/vim-gitgutter'
    Plug 'airblade/vim-rooter'
    Plug 'ap/vim-css-color'
    Plug 'dense-analysis/ale'
    Plug 'easymotion/vim-easymotion'
    Plug 'honza/vim-snippets'
    Plug 'vim-airline/vim-airline'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'machakann/vim-highlightedyank'
    Plug 'mcchrish/nnn.vim'
    Plug 'mhinz/vim-startify'
    Plug 'morhetz/gruvbox'
    Plug 'neovimhaskell/haskell-vim'
    Plug 'posva/vim-vue'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'ycm-core/YouCompleteMe'

call plug#end()

colorscheme gruvbox

if !exists('##TextYankPost')
    map y <Plug>(highlightedyank)
endif

" Airline
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" FZF
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_preview_window = 'right:60%'

" NNN
let g:nnn#layout = { 'window': { 'width': 0.8, 'height': 0.6, 'highlight': 'Debug'  }  }
let g:nnn#action = { 'e': 'edit', 'o': 'edit' }

" AutoPairs
let g:AutoPairsShortcutToggle = ''

" Ultisnips 
let g:UltiSnipsExpandTrigger = '<M-l>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

" YouCompleteMe
let g:ycm_key_list_accept_completion = ['<M-l>']

" Startify
let g:startify_custom_header = []
let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   Files']                        },
            \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
            \ { 'type': 'sessions',  'header': ['   Sessions']                     },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
            \ ]
let g:startify_bookmarks = [
            \ '~/.config/nvim/init.vim'  ,
            \ '~/.config/nvim/vim-plug/plugins.vim',
            \ '~/.config/nvim/keys/mappings.vim'  ,
            \ '~/.config/nvim/general/settings.vim',
            \ ]

" ALE
let g:airline#extensions#ale#enabled = 1
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


" EasyMotion maps
let g:EasyMotion_use_smartsign_us = 1
let g:EasyMotion_smartcase = 1
map f <Plug>(easymotion-prefix)
map ff <Plug>(easymotion-bd-fl)
map F <Plug>(easymotion-bd-f)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
