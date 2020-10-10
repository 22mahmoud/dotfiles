local K = require 'utils'

vim.cmd('let mapleader=" "')

-- better indenting
K.Key_mapper('v', '<', '<gv')
K.Key_mapper('v', '>', '>gv')

-- clear all the highlighted text from the previous search
K.Key_mapper('n', '<Leader><Space>', ':noh<CR>')
