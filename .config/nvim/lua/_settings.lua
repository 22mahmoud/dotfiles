local o = vim.o
local wo = vim.wo

vim.cmd('filetype plugin indent on') -- enable filetype detection
vim.cmd('syntax on') -- enable syntax highlighting

--[[ Window  ]]
wo.number = true -- enable numbers
wo.signcolumn = "number" -- Merge signcolumn and numbers
wo.relativenumber = true -- use relative numbers
wo.t_Co = '256' -- support 256 colors
wo.cursorline = true -- enable highlight the line under the cursor

--[[ Editor ]]
o.termguicolors = true -- for coloerizer
o.wrap = false -- don't wrap the text
o.background = 'dark'
o.hidden = true -- hide some buffers
o.showmatch = true -- Visually show matching bracket
o.splitbelow = true -- Split window to the bottom
o.splitright = true -- Split window to right
o.smartcase = true -- Use smart case
o.ignorecase = true -- Ignore case
o.path = ".,,**" -- Set standard path
o.clipboard = 'unnamedplus' .. o.clipboard -- os clipboard
o.completeopt = 'menuone,noinsert,noselect'
o.laststatus = 2 -- Dont display statusline
o.shortmess = o.shortmess .. 'c'
o.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
o.smartindent = true -- Makes indenting smart
o.autoindent = true
o.tabstop = 2 -- Insert 2 spaces for a tab
o.shiftwidth = 2 -- Change the number of space characters inserted for indentation
o.expandtab = true
