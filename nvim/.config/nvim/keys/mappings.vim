imap JO <Esc>O
imap jj <Esc>
imap jo <Esc>o

nmap <C-m> `
nmap <C-n><C-n> :GitGutterToggle<CR> :set rnu! <CR> :set number! <CR> :ALEToggle <CR>
nmap <S-j> :tabprevious<CR>
nmap <S-k> :tabnext<CR>
nmap <S-u>	<C-r>
nmap <leader>;	%
nmap <leader>P :Files<CR>
nmap <leader>SE :setlocal spell! spelllang=en_us<CR>
nmap <leader>SS :setlocal spell! spelllang=es<CR>
nmap <leader>e :tabnew $MYVIMRC<CR>
nmap <leader>p :GFiles<CR>
nmap <leader>q ZZ
nmap <leader>s :w<CR>
nmap <leader>w :source ~/.config/nvim/init.vim<CR>
nmap <silent> <F1> :call NewExercise()<CR>
nmap <silent> <F2> :call NavigateExercises(1)<CR>
nmap <silent> <F3> :call NavigateExercises(0)<CR>
nmap <silent> <leader>[ <Plug>(ale_previous_wrap)
nmap <silent> <leader>] <Plug>(ale_next_wrap)
nmap gf <C-w>gf

nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
nnoremap <leader>cc <C-w><C-w>:q<CR>
nnoremap <leader>n :NnnPicker '%:p:h'<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap S :%s//g<Left><Left>

vmap < <gv
vmap <BS> <Esc>
vmap > >gv
vmap s :s//g<Left><Left>
