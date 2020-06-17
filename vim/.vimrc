syntax on
filetype plugin indent on
set hidden
set hls
set incsearch
set laststatus=2
set nobackup
set nocompatible
set noshowmode
set noswapfile
set number relativenumber
set shiftwidth=4
set smartcase
set smartindent
set tabstop=4 softtabstop=4
set undodir=~/.vim/undodir
set undofile

call plug#begin('~/.vim/plugged')
	
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'airblade/vim-gitgutter'
	Plug 'ap/vim-css-color'
	Plug 'itchyny/lightline.vim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'machakann/vim-highlightedyank'
	Plug 'PotatoesMaster/i3-vim-syntax'
	Plug 'preservim/nerdtree'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'ycm-core/YouCompleteMe'

call plug#end()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


if !exists('##TextYankPost')
	  map y <Plug>(highlightedyank)
endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif
autocmd FileType apache setlocal commentstring=#\ %s
autocmd FileType tex,latex,markdown set spell spelllang=en_us
autocmd InsertEnter * norm zz

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#990000 ctermfg=2
highlight GitGutterDelete guifg=#DDDD00 ctermfg=2
highlight! link SignColumn LineNr

let g:timeoutlen=100 
let g:termsize=10*0
let g:plug_window = 'noautocmd vertical topleft new'
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_stop_completion = ['<C-y>']
let mapleader = " "

" imap jj <Esc>

nmap <leader>;	%
nmap <leader>f :NERDTreeToggle<CR> 
nmap <leader>h	0
nmap <leader>l	$
nmap <leader>H  :noh<CR>
nmap <leader>S :setlocal spell! spelllang=en_us<CR>
nmap <S-u>	<C-r>

nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
nnoremap <S-j> :tabprevious<CR>
nnoremap <S-k> :tabnext<CR>
nnoremap <leader>\ :nohlsearch<CR><CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>t :tabclose<CR>
nnoremap <leader>w :source ~/.vimrc<CR>

