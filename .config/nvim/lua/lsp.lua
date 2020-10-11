local lsp = require'nvim_lsp'
local utils = require'utils'

local command = vim.api.nvim_command

local on_attach = function(client)
	require'diagnostic'.on_attach(client)
  require'completion'.on_attach(client)
end

require('nlua.lsp.nvim').setup(lsp, {
	on_attach = on_attach
})

vim.g.diagnostic_enable_virtual_text = 1
vim.g.diagnostic_trimmed_virtual_text = '40'
vim.g.diagnostic_insert_delay = 1

vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}
vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.shortmess = vim.o.shortmess .. "c"
vim.g.completion_matching_ignore_case = 1

command('autocmd CursorHold <buffer> lua vim.lsp.util.show_line_diagnostics()')
command('autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()')
command('autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()')
command('autocmd CursorMoved <buffer> lua vim.lsp.util.buf_clear_references()')

utils.map(
	'i',
	'<Tab>',
	[[ pumvisible() ? "\<C-n>" : "\<Tab>" ]],
	{ expr = true }
)

utils.map(
	'i',
	'<S-Tab>',
	[[ pumvisible() ? "\<C-p>" : "\<S-Tab>" ]],
	{ expr = true }
)

local servers = {
  {
    name = 'html',
    config = {
      filetypes = { "html", "jinja" }
    }
  },
  {name = 'bashls'},
  {name = 'vimls'},
  {
    name = 'tsserver',
  },
  {name = 'jsonls'},
  {name = 'rust_analyzer'},
  {name = 'vuels'},
  {
    name = 'sumneko_lua',
    config = {
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
            path = vim.split(package.path, ';'),
          },
          completion = {
            keywordSnippet = "Disable",
          },
          diagnostics = {
            enable = true,
            globals = {"vim"},
          },
        }
      },
    }
  },
  -- {name = 'cssls'},
}



for _, server in ipairs(servers) do
  if server.config then
    server.config.on_attach = on_attach
  else
    server.config = {
      on_attach = on_attach,
    }
  end

  lsp[server.name].setup(server.config)
end
