local M = {}

function M.setup(opts)
  require("ef-dream.config").set(opts)
end

function M.load()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "ef-dream"

  local p = require("ef-dream.palette").get_palette()
  local cfg = require("ef-dream.config").current

  require("ef-dream.highlights").apply(p, cfg)

  if cfg.terminal_colors then
    M._set_terminal_colors(p)
  end
end

function M._set_terminal_colors(p)
  -- dark variants (0-7)
  vim.g.terminal_color_0  = p.bg_alt        -- black
  vim.g.terminal_color_1  = p.red           -- red
  vim.g.terminal_color_2  = p.green         -- green
  vim.g.terminal_color_3  = p.yellow        -- yellow
  vim.g.terminal_color_4  = p.blue          -- blue
  vim.g.terminal_color_5  = p.magenta       -- magenta
  vim.g.terminal_color_6  = p.cyan          -- cyan
  vim.g.terminal_color_7  = p.fg_dim        -- white (dim)
  -- bright variants (8-15)
  vim.g.terminal_color_8  = p.bg_active     -- bright black
  vim.g.terminal_color_9  = p.red_warmer    -- bright red
  vim.g.terminal_color_10 = p.green_warmer  -- bright green
  vim.g.terminal_color_11 = p.yellow_warmer -- bright yellow
  vim.g.terminal_color_12 = p.blue_cooler   -- bright blue
  vim.g.terminal_color_13 = p.magenta_warm  -- bright magenta
  vim.g.terminal_color_14 = p.cyan_warmer   -- bright cyan
  vim.g.terminal_color_15 = p.fg_main       -- bright white
end

return M
