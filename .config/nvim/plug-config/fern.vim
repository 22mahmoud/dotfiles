noremap <silent><Leader>e :Fern . -drawer -reveal=% -toggle -width=30<CR><C-w>=

let g:fern#default_hidden=1
let g:fern#renderer="nerdfont"
let g:cursorhold_updatetime=100
let g:fern_git_status#disable_ignore=1

" let g:fern#disable_default_mappings=1
function! s:init_fern() abort
  nmap <buffer><expr> <Plug>(fern-my-open-or-expand)
          \ fern#smart#leaf(
          \   "\<Plug>(fern-action-open:select)",
          \   "\<Plug>(fern-action-expand)",
          \   "\<Plug>(fern-action-open)",
          \ )
  nmap <buffer> n     <Plug>(fern-action-new-path)
  nmap <buffer> d     <Plug>(fern-action-remove)
  nmap <buffer> m     <Plug>(fern-action-move)
  nmap <buffer> v     <Plug>(fern-action-mark:toggle)
  nmap <buffer> r     <Plug>(fern-action-rename)
  nmap <buffer> l     <Plug>(fern-action-open-or-expand)
  nmap <buffer> <C-h> <Plug>(fern-action-hidden-toggle)
  nmap <buffer> <C-r> <Plug>(fern-action-reload)
  nmap <buffer> <C-v> <Plug>(fern-action-open:vsplit)
  nmap <buffer> <C-s> <Plug>(fern-action-open:split)
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
