cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-J> <Down>
cnoremap <C-K> <Up>

imap jj <Esc>

map <leader>S :w !sudo tee % <CR><CR>
map Q <nop>
map q: <nop>

nmap <M-m> `
nmap <S-j> :tabprevious<CR>
nmap <S-k> :tabnext<CR>
nmap <S-u>	<C-r>
nmap <leader>Q :q<CR>
nmap <leader>e :tabnew $MYVIMRC<CR>
nmap <leader>q :wq<CR>
nmap <leader>s :w<CR>
nmap <leader>w :source ~/.config/nvim/init.vim<CR>
nmap gf <C-w>gF

nnoremap <Tab> %
nnoremap <silent> <BS> :nohlsearch<Bar>:echo<CR>
nnoremap S :%s///g<Left><Left>
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
