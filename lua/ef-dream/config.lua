local M = {}

local defaults = {
  italic_comments = true,
  italic_keywords = false,
  italic_functions = false,
  italic_variables = false,
  transparent_background = false,
  terminal_colors = true,
}

M.current = vim.deepcopy(defaults)

function M.set(opts)
  M.current = vim.tbl_extend("force", defaults, opts or {})
end

return M
