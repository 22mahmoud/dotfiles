let mapleader=","

" Better spliting 
nmap <leader>t    :tabedit<Return>
nmap <leader>s    :split<Return><C-w>
nmap <leader>v    :vsplit<Return><C-w>

" Use alt + hjkl to resize windows
" nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Better indenting
vnoremap < <gv
vnoremap > >gv

