vim.cmd('packadd nvim-lspconfig')
vim.cmd('packadd completion-nvim')
vim.cmd('packadd diagnostic-nvim')
vim.cmd('packadd nlua.nvim')

require 'settings'
require 'theme'
require 'lsp'
