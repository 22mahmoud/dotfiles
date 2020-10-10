local U = {}

-- Key mapping
function U.Key_mapper(mode, key, result, silent, expr, script)
  vim.fn.nvim_set_keymap(
    mode,
    key,
    result,
    {
      noremap = true,
      silent = silent or false,
      expr = expr or false,
      script = script or false
    }
  )
end

return U
