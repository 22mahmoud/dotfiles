if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  " lsp
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/diagnostic-nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  " use ctrl+i,j,h,k to navigate between vim splits & tmux panes
  Plug 'christoomey/vim-tmux-navigator'
  " display the indention levels
  Plug 'Yggdroot/indentLine'
  " Surround
  Plug 'tpope/vim-surround'
  " auto set indent settings
  Plug 'tpope/vim-sleuth'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Git
  Plug 'airblade/vim-gitgutter'
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  Plug  'lepture/vim-jinja'
  Plug 'pantharshit00/vim-prisma'
  " Svelte Syntax highlight
  Plug 'evanleck/vim-svelte', {'branch': 'main'}
    " Start Screen
  Plug 'mhinz/vim-startify'
  " Better Comments
  Plug 'tpope/vim-commentary'
  " Closetags
  Plug 'alvan/vim-closetag'
  Plug 'jiangmiao/auto-pairs'
  " Markdown
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  " Theme
  Plug 'morhetz/gruvbox'
  " Status Line (airline)
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Cool Icons
  Plug 'ryanoasis/vim-devicons'
  " Add some color
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'junegunn/rainbow_parentheses.vim'
  " Fern
  Plug 'lambdalisue/fern.vim'
  Plug 'lambdalisue/glyph-palette.vim'
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  Plug 'lambdalisue/fern-git-status.vim'
  Plug 'lambdalisue/nerdfont.vim'
call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
