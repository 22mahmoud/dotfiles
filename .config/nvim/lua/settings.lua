local wo = vim.wo
local o = vim.o
local bo = vim.bo

wo.cursorline = true
wo.relativenumber = true
wo.signcolumn= 'number'

o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2

o.updatetime = 600
o.hidden = true
o.backup = false
o.writebackup = false
bo.swapfile = false
wo.wrap = false

o.splitbelow = true
o.splitright = true

o.ignorecase = true
o.smartcase = true

o.clipboard = 'unnamedplus'

