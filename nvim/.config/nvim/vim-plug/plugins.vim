call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'mcchrish/nnn.vim'
	Plug 'neovimhaskell/haskell-vim'
    Plug 'dense-analysis/ale'
	Plug 'SirVer/ultisnips'
    Plug 'posva/vim-vue'
	Plug 'honza/vim-snippets'
	Plug 'airblade/vim-gitgutter'
	Plug 'ap/vim-css-color'
	Plug 'jiangmiao/auto-pairs'
    Plug 'itchyny/lightline.vim'
	Plug 'machakann/vim-highlightedyank'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
    Plug 'easymotion/vim-easymotion'
	Plug 'ycm-core/YouCompleteMe'
    Plug 'morhetz/gruvbox'
    Plug 'maximbaz/lightline-ale'

call plug#end()

if !exists('##TextYankPost')
	  map y <Plug>(highlightedyank)
endif

" NNN
let g:nnn#layout = { 'window': { 'width': 0.8, 'height': 0.6, 'highlight': 'Debug'  }  }
let g:nnn#action = { 'e': 'tab split' }

" GitGutter
highlight GitGutterAdd    guifg=#98971a ctermfg=2
highlight GitGutterChange guifg=#d79921 ctermfg=2
highlight GitGutterDelete guifg=#cc241d ctermfg=2
highlight! link SignColumn LineNr

" Ultisnips 
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

" YouCompleteMe
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_key_list_accept_completion = ['<C-l>']

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

" Lightline
let g:lightline = { 'colorscheme': 'gruvbox'}
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok'
      \  }
let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }
let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok'  ]]  }


" EasyMotion maps
let g:EasyMotion_use_smartsign_us = 1
map f <Plug>(easymotion-prefix)
map ff <Plug>(easymotion-bd-fl)
map F <Plug>(easymotion-bd-f)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
