" /* spell-checker: disable */
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
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
  " Markdown
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
  " Git
  Plug 'airblade/vim-gitgutter'
  "  Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " Svelte Syntax highlight
  Plug 'evanleck/vim-svelte', {'branch': 'main'}
  " njk Syntax Support
  Plug 'lepture/vim-jinja'
  " Pug/Jade support
  Plug 'dNitro/vim-pug-complete', { 'for': ['jade', 'pug'] }
  " Start Screen
  Plug 'mhinz/vim-startify'
  " Better Comments
  Plug 'tpope/vim-commentary'
  " Closetags
  Plug 'alvan/vim-closetag'
  " themes
  Plug 'arzg/vim-colors-xcode'
  Plug 'gruvbox-community/gruvbox'
  Plug 'arcticicestudio/nord-vim'
  " Status Line (airline)
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Cool Icons
  Plug 'ryanoasis/vim-devicons'
  " Add some color
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'junegunn/rainbow_parentheses.vim'
call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
