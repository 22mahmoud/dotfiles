source 	$HOME/.config/nvim/vim-plug/plugins.vim
source 	$HOME/.config/nvim/general/settings.vim
lua require('init')
source 	$HOME/.config/nvim/general/theme.vim
source 	$HOME/.config/nvim/plug-config/closetags.vim
source 	$HOME/.config/nvim/plug-config/fern.vim
source 	$HOME/.config/nvim/plug-config/indentLine.vim
source 	$HOME/.config/nvim/plug-config/fzf.vim
source 	$HOME/.config/nvim/plug-config/airline.vim
source 	$HOME/.config/nvim/plug-config/rainbow.vim


inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

imap <silent> <c-p> <Plug>(completion_trigger)

" nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>
" nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> gT    <cmd>lua vim.lsp.buf.type_definition()<CR>
" nnoremap <silent> rn    <cmd>lua vim.lsp.buf.rename()<CR>
" nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>

let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_trimmed_virtual_text = '40'
" Don't show diagnostics while in insert mode
let g:diagnostic_insert_delay = 1

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hold
autocmd CursorHold * lua vim.lsp.util.show_line_diagnostics()

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>PrevDiagnosticCycle<cr>
nnoremap <silent> g] <cmd>NextDiagnosticCycle<cr>


let g:vim_markdown_folding_disabled = 1
