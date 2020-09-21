syntax on
filetype plugin indent on
set scrolloff=5
set hlsearch
set encoding=utf-8
set incsearch
set laststatus=2
set nobackup
set noshowmode
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set undodir=$XDG_DATA_HOME/vim/undodir
set undofile
set noswapfile
set termguicolors
set viminfo+='1000,n$XDG_DATA_HOME/vim/viminfo'
set pastetoggle=<F12>

call plug#begin('~/.vim/plugged')

    Plug 'mcchrish/nnn.vim'
	Plug 'neovimhaskell/haskell-vim'
    Plug 'dense-analysis/ale'
	Plug 'SirVer/ultisnips'
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

set background=dark
colorscheme gruvbox

if !exists('##TextYankPost')
	  map y <Plug>(highlightedyank)
endif

autocmd InsertEnter * norm zz
" :au BufAdd,BufNewFile,BufRead * nested tab sball


let g:timeoutlen=100
let g:termsize=10*0
let g:plug_window = 'noautocmd vertical topleft new'
let mapleader = ' '
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[3 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode]

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
    \   'python': ['flake8'],
    \   'haskell': ['hlint'],
    \   'vim': ['vint'] 
    \ }
let g:ale_fixers = {
    \   'javascript': ['eslint'],
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

imap JO <Esc>O
imap jo <Esc>o
imap jj <Esc>

inoremap <expr> jl search('\%#[]>)}''"]', 'n') ? '<Right>' : ''

vmap s :s//g<Left><Left>

nmap <C-m> `
nmap <C-n><C-n> :GitGutterToggle<CR> :set rnu! <CR> :ALEToggle <CR>
nmap <silent> <F1> :call NewExercise()<CR>
nmap <silent> <F2> :call NavigateExercises(1)<CR>
nmap <silent> <F3> :call NavigateExercises(0)<CR>
nmap <S-j> :tabprevious<CR>
nmap <S-k> :tabnext<CR>
nmap <S-u>	<C-r>
nmap <leader>;	%
nmap <leader>SE :setlocal spell! spelllang=en_us<CR>
nmap <leader>SS :setlocal spell! spelllang=es<CR>
nmap <leader>e :tabnew $MYVIMRC<CR>
nmap <leader>p mmgg=G`m
nmap <leader>q ZZ
nmap <leader>s :w<CR>
nmap <leader>w :source $MYVIMRC<CR>
nmap <silent> <leader>[ <Plug>(ale_previous_wrap)
nmap <silent> <leader>] <Plug>(ale_next_wrap)

nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
nnoremap <leader>cc <C-w><C-w>:q<CR>
nnoremap <leader>n :NnnPicker '%:p:h'<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap S :%s//g<Left><Left>

function! NewExercise()
    normal mm
    execute ":g/--\\s.*\\s--/y"
    execute "normal! `mP \<C-a>j"
endfunction

function! NavigateExercises(dir)
    execute "/--\\s.*\\s--/"
    if a:dir | execute 'normal NN' | endif
    normal zt
endfunction
