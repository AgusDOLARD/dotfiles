call plug#begin('~/.config/nvim/autoload/plugged')

	Plug 'arcticicestudio/nord-vim'
	Plug 'neoclide/coc.nvim', { 'branch' : 'release' }
    Plug 'airblade/vim-gitgutter'
	Plug 'kien/ctrlp.vim'
    Plug 'ap/vim-css-color'
    Plug 'easymotion/vim-easymotion'
    Plug 'itchyny/lightline.vim'
    Plug 'honza/vim-snippets'
    Plug 'jiangmiao/auto-pairs'
    Plug 'machakann/vim-highlightedyank'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
