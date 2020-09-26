call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'mcchrish/nnn.vim'
    Plug 'neovimhaskell/haskell-vim'
    Plug 'mhinz/vim-startify'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
    Plug 'junegunn/fzf.vim'
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

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
