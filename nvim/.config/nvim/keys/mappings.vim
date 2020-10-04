imap JO <Esc>O
imap jj <Esc>
" imap jo <Esc>o

nmap <C-m> `
nmap <S-j> :tabprevious<CR>
nmap <S-k> :tabnext<CR>
nmap <S-u>	<C-r>
nmap <leader>SE :setlocal spell! spelllang=en_us<CR>
nmap <leader>SS :setlocal spell! spelllang=es<CR>
nmap <leader>e :tabnew $MYVIMRC<CR>
nmap <leader>q :wq<CR>
nmap <leader>Q :q<CR>
nmap <leader>s :w<CR>
nmap <leader>w :source ~/.config/nvim/init.vim<CR>
nmap <silent> <F1> :call NewExercise()<CR>
nmap <silent> <F2> :call NavigateExercises(1)<CR>
nmap <silent> <F3> :call NavigateExercises(0)<CR>
nmap gf <C-w>gF

nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
nnoremap <leader>cc <C-w><C-w>:q<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap S :%s//g<Left><Left>
nnoremap <Tab> %
nnoremap Y y$

vmap < <gv
vmap > >gv
vmap <BS> <Esc>
vmap s :s//g<Left><Left>
vnoremap ( <esc>`>a)<esc>`<i(<esc>
vnoremap [ <esc>`>a]<esc>`<i[<esc>
vnoremap { <esc>`>a}<esc>`<i{<esc>
vnoremap " <esc>`>a"<esc>`<i"<esc>
vnoremap ' <esc>`>a'<esc>`<i'<esc>
vnoremap ` <esc>`>a`<esc>`<i`<esc>

cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K> <Up>
cnoremap <C-J> <Down>

map <C-A> ggVG
map q: <nop>
map Q <nop>
noremap ) $
