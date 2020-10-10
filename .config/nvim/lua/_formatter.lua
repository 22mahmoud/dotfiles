local api = vim.api

-- Find executable locally
local function setPrettier(exe)
  local node = io.popen([[fd -uu '^prettier$' node_modules/.bin]])
  for fname in node:lines() do
    if (string.match(fname, exe) == exe) then
      return fname
    else
      return exe
    end
  end
  node:close()
end

-- Formatter setup
require "format".setup(
  {
    javascript = {
      prettier = function()
        return {
          exe = setPrettier("prettier"),
          args = {"--stdin-filepath", api.nvim_buf_get_name(0)},
          stdin = true
        }
      end
    },
    javascriptreact = {
      prettier = function()
        return {
          exe = setPrettier("prettier"),
          args = {"--stdin-filepath", api.nvim_buf_get_name(0)},
          stdin = true
        }
      end
    },
    typescript = {
      prettier = function()
        return {
          exe = setPrettier("prettier"),
          args = {"--stdin-filepath", api.nvim_buf_get_name(0)},
          stdin = true
        }
      end
    },
    typescriptreact = {
      prettier = function()
        return {
          exe = setPrettier("prettier"),
          args = {"--stdin-filepath", api.nvim_buf_get_name(0)},
          stdin = true
        }
      end
    },
    css = {
      prettier = function()
        return {
          exe = setPrettier("prettier"),
          args = {"--stdin-filepath", api.nvim_buf_get_name(0)},
          stdin = true
        }
      end
    },
    less = {
      prettier = function()
        return {
          exe = setPrettier("prettier"),
          args = {"--stdin-filepath", api.nvim_buf_get_name(0)},
          stdin = true
        }
      end
    },
    html = {
      prettier = function()
        return {
          exe = setPrettier("prettier"),
          args = {"--stdin-filepath", api.nvim_buf_get_name(0)},
          stdin = true
        }
      end
    },
    lua = {
      luafmt = function()
        return {
          exe = "luafmt",
          args = {"--indent-count", 2, "--stdin"},
          stdin = true
        }
      end
    },
    prisma = {
      prismafmt = function()
        return {
          exe = "prisma",
          args = {"format"},
          stdin = true
        }
      end
    },
  }
)
