syntax on
filetype plugin indent on

set background=dark
set encoding=utf-8
set hlsearch
set incsearch
set laststatus=2
set nobackup
set noshowmode
set noswapfile
set relativenumber number
set scrolloff=5
set shiftwidth=4
set smartindent
set tabstop=4 softtabstop=4
set termguicolors
set undodir=$XDG_DATA_HOME/nvim/undodir
set undofile
set viminfo+='1000,n$XDG_DATA_HOME/nvim/viminfo'
set pastetoggle=<F12>

colorscheme gruvbox

let g:timeoutlen=100
let g:termsize=10*0
let g:plug_window = 'noautocmd vertical topleft new'
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[3 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode]

autocmd InsertEnter * norm zz

let s:clip = '/mnt/c/Windows/System32/clip.exe' 
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end
