call plug#begin('~/.config/nvim/autoload/plugged')

	Plug 'arcticicestudio/nord-vim'
	Plug 'kien/ctrlp.vim'
	Plug 'neoclide/coc.nvim', { 'branch' : 'release' }
    Plug 'airblade/vim-gitgutter'
    Plug 'ap/vim-css-color'
    Plug 'easymotion/vim-easymotion'
    Plug 'honza/vim-snippets'
    Plug 'itchyny/lightline.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'machakann/vim-highlightedyank'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
