local lsp = require'nvim_lsp'
local K = require "utils"

local on_attach = function(client, bufnr)
  -- Set omnifunc
  vim.api.nvim_buf_set_option(bufnr or 0, "omnifunc", "v:lua.vim.lsp.omnifunc")

  require'completion'.on_attach(client)
  require'diagnostic'.on_attach(client)

  -- Mappings
  K.Key_mapper("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", true)
  K.Key_mapper("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", true)
  K.Key_mapper("n", ",r", "<cmd>lua vim.lsp.buf.references()<CR>", true)
  K.Key_mapper("n", ",w", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", true)
  K.Key_mapper("n", ",W", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", true)
  K.Key_mapper("n", ",d", "<cmd>lua vim.lsp.buf.declaration()<CR>", true)

  K.Key_mapper("n", ",f", "<cmd>Format<CR>", true)
  K.Key_mapper("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", true)
  K.Key_mapper("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", true)
  K.Key_mapper("n", "<leader>ld", "<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>", true)
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
      root_dir = lsp.util.root_pattern("tsconfig.json", ".git", "package.json"),
    }
  },
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
            globals = {"vim", "spoon", "hs"},
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
            }
          }
        }
      },
    }
  },
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
