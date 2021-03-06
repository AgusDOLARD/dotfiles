syntax on
filetype plugin indent on

set background=dark
set encoding=utf-8
set autoindent noexpandtab tabstop=4 shiftwidth=4
set relativenumber number
set hlsearch
set incsearch
set nobackup
set noshowmode
set noswapfile
set scrolloff=5
set termguicolors
set undofile
set undodir=$HOME/.local/share/nvim/undodir
set viminfo+='1000,n$HOME/.local/share/nvim/viminfo'
set clipboard=unnamed
set pastetoggle=<F12>

let g:timeoutlen=100
let g:termsize=10*0
let g:plug_window = 'noautocmd vertical topleft new'
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[3 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode]

" Python location
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog  = '/usr/bin/python3'

autocmd InsertEnter * norm zz
autocmd InsertLeave * set nopaste

let s:clip = '/mnt/c/Windows/System32/clip.exe' 
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end
