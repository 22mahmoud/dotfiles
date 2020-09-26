local lsp = require'nvim_lsp'

local on_attach = function(client)
  require'completion'.on_attach(client)
  require'diagnostic'.on_attach(client)
end


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
    config = {
      root_dir = lsp.util.root_pattern("tsconfig.json", ".git"),
    }
  },
  {name = 'sumneko_lua'},
  {name = 'jsonls'},
  {name = 'rust_analyzer'},
  {name = 'vuels'},
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
