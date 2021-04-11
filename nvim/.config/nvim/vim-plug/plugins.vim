call plug#begin('~/.config/nvim/autoload/plugged')

    " Plug 'ycm-core/YouCompleteMe'
    " Plug 'SirVer/ultisnips'
    " Plug 'dense-analysis/ale'
    " Plug 'honza/vim-snippets'
    " Plug 'neovimhaskell/haskell-vim'
	Plug 'arcticicestudio/nord-vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'ap/vim-css-color'
    Plug 'easymotion/vim-easymotion'
    Plug 'itchyny/lightline.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
    Plug 'junegunn/fzf.vim'
    Plug 'machakann/vim-highlightedyank'
    Plug 'mcchrish/nnn.vim'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
