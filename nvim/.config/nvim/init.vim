let mapleader = ' '

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

" GitGutter
highlight GitGutterAdd    guifg=#98971a
highlight GitGutterChange guifg=#d79921
highlight GitGutterDelete guifg=#cc241d
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight clear SignColumn


autocmd BufWritePost $MYVIMRC source %
autocmd InsertEnter * norm zz
" :au BufAdd,BufNewFile,BufRead * nested tab sball
" autocmd bufenter * if (line('$') == 1 && getline(1) == '') | q | endif
