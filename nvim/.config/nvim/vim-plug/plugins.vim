call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'airblade/vim-gitgutter'
	Plug 'arcticicestudio/nord-vim'
    Plug 'honza/vim-snippets'
    Plug 'easymotion/vim-easymotion'
    Plug 'honza/vim-snippets'
    Plug 'itchyny/lightline.vim'
    Plug 'jiangmiao/auto-pairs'
	Plug 'kien/ctrlp.vim'
	Plug 'morhetz/gruvbox'
	Plug 'neoclide/coc.nvim', { 'branch' : 'release' }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'

call plug#end()

colorscheme gruvbox

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
