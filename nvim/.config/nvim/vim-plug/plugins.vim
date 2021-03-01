call plug#begin('~/.config/nvim/autoload/plugged')

	" Plug 'morhetz/gruvbox'
	Plug 'arcticicestudio/nord-vim'
	Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
    " Plug 'posva/vim-vue'
    Plug 'SirVer/ultisnips'
    Plug 'airblade/vim-gitgutter'
    Plug 'airblade/vim-rooter'
    Plug 'ap/vim-css-color'
    Plug 'dense-analysis/ale'
    Plug 'easymotion/vim-easymotion'
    Plug 'honza/vim-snippets'
    Plug 'itchyny/lightline.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
    Plug 'junegunn/fzf.vim'
    Plug 'machakann/vim-highlightedyank'
    Plug 'maximbaz/lightline-ale'
    Plug 'mcchrish/nnn.vim'
    Plug 'neovimhaskell/haskell-vim'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'ycm-core/YouCompleteMe'
	Plug 'dart-lang/dart-vim-plugin'
	Plug 'thosakwe/vim-flutter'

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
