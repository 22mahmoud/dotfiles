syntax enable										" Enable syntax highlighting
set termguicolors
set hidden                      " Required to keep multiple buffers open multiple buffers
set cursorline                  " Enable highlighting of the current line
set background=dark		" vim will pick dark colors and schema by default
set nowrap              	" Display long line without wrap it
set encoding=utf-8		" The encoding displayed 
set fileencoding=utf-8          " The encoding written to file
set number relativenumber       " use relative number for file lines
set t_Co=256                    " Support 256 colors
set smarttab                    " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                 " Makes indenting smart
set autoindent  		" Good auto indent
set tabstop=2                   " Insert 2 spaces for a tab
set shiftwidth=2                " Change the number of space characters inserted for indentation
set splitbelow                  " Horizontal splits will automatically be below
set splitright                  " Vertical splits will automatically be to the right
set conceallevel=0              " So that I can see `` in markdown files
set showtabline=2               " Always show tabs 
 set noshowmode                 " We don't need to see things like -- INSERT -- anymore
set nobackup                    " This is recommended by coc
set nowritebackup               " This is recommended by coc
set shortmess+=c 		" Don't pass messages to ins-completion-menu.
set cmdheight=2  		" Give more space for displaying messages.
set signcolumn=yes              " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300              " Faster completion
set hlsearch                    " Highlight found searches
set incsearch                   " Highlight wihle typing
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


