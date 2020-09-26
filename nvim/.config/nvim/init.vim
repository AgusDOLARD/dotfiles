let mapleader = ' '

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

autocmd InsertEnter * norm zz
" :au BufAdd,BufNewFile,BufRead * nested tab sball
