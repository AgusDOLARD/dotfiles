cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-J> <Down>
cnoremap <C-K> <Up>

imap jj <Esc>
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l

map <leader>S :w !sudo tee % <CR><CR>
map Q <nop>
map q: <nop>

nmap <M-m> `
nmap <S-j> :tabprevious<CR>
nmap <S-k> :tabnext<CR>
nmap <S-u>	<C-r>
nmap <leader>Q :q<CR>
nmap <leader>SE :setlocal spell! spelllang=en_us<CR>
nmap <leader>SS :setlocal spell! spelllang=es<CR>
nmap <leader>e :tabnew $MYVIMRC<CR>
nmap <leader>q :wq<CR>
nmap <leader>s :w<CR>
nmap <leader>w :source ~/.config/nvim/init.vim<CR>
nmap gf <C-w>gF

nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
nnoremap <leader>r /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn
nnoremap <Tab> %
nnoremap <leader>cc <C-w><C-w>:q<CR>
nnoremap <silent> <BS> :nohlsearch<Bar>:echo<CR>
nnoremap S :%s//g<Left><Left>
nnoremap Y y$

noremap ) $

vmap < <gv
vmap <BS> <Esc>
vmap > >gv
vmap s :s//g<Left><Left>

vnoremap " <esc>`>a"<esc>`<i"<esc>
vnoremap ' <esc>`>a'<esc>`<i'<esc>
vnoremap ( <esc>`>a)<esc>`<i(<esc>
vnoremap [ <esc>`>a]<esc>`<i[<esc>
vnoremap ` <esc>`>a`<esc>`<i`<esc>
vnoremap { <esc>`>a}<esc>`<i{<esc>
