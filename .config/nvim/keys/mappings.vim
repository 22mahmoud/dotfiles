let mapleader=" "

" Use alt + hjkl to resize windows
" nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" clear all the highlighted text from the previous search
nnoremap <Leader><Space> :noh<CR>

" Create new tab with no name
map <Leader>tt :tabedit<CR>
" Create new tab with a file for editing
" Since there's no <CR> it allows you to specify a filename.
" The name of a new file to create or an existing one.
map <Leader>te :tabedit
" Close all tabs but the active one
map <Leader>to :tabonly<CR>

command Exec set splitright | vnew | set filetype=zsh | r! zsh #
