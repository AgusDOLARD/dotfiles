imap JO <Esc>O
imap jo <Esc>o
imap jj <Esc>

vmap <BS> <Esc>
vmap s :s//g<Left><Left>
vmap < <gv
vmap > >gv

nmap <C-m> `
nmap <C-n><C-n> :GitGutterToggle<CR> :set rnu! <CR> :set number! <CR> :ALEToggle <CR>
nmap <F12> :set invpaste<CR>
nmap <S-j> :tabprevious<CR>
nmap <S-k> :tabnext<CR>
nmap <S-u>	<C-r>
nmap <leader>;	%
nmap <leader>SE :setlocal spell! spelllang=en_us<CR>
nmap <leader>SS :setlocal spell! spelllang=es<CR>
nmap <leader>e :tabnew $MYVIMRC<CR>
nmap <leader>p :GFiles<CR>
nmap <leader>P :Files<CR>
nmap <leader>q ZZ
nmap <leader>s :w<CR>
nmap <leader>w :source ~/.config/nvim/init.vim<CR>
nmap <silent> <F1> :call NewExercise()<CR>
nmap <silent> <F2> :call NavigateExercises(1)<CR>
nmap <silent> <F3> :call NavigateExercises(0)<CR>
nmap <silent> <leader>[ <Plug>(ale_previous_wrap)
nmap <silent> <leader>] <Plug>(ale_next_wrap)

nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
nnoremap <leader>cc <C-w><C-w>:q<CR>
nnoremap <leader>n :NnnPicker '%:p:h'<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap S :%s//g<Left><Left>

function! NewExercise()
    normal mm
    execute ":g/--\\s.*\\s--/y"
    execute "normal! `mP \<C-a>j"
endfunction

function! NavigateExercises(dir)
    execute "/--\\s.*\\s--/"
    if a:dir | execute 'normal NN' | endif
    normal zt
endfunction
