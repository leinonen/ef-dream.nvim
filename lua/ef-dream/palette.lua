-- ef-dream palette
-- Based on ef-dream-theme.el by Protesilaos Stavrou
-- https://github.com/protesilaos/ef-themes

local M = {}

-- Backgrounds
M.bg_main     = "#232025"
M.bg_dim      = "#322f34"
M.bg_alt      = "#3b393e"
M.bg_active   = "#5b595e"
M.bg_inactive = "#3a373c"
M.bg_popup    = "#2e2a31"

-- Foregrounds
M.fg_main = "#efd5c5"
M.fg_dim  = "#8f8886"
M.fg_alt  = "#b0a0cf"

-- UI accents
M.border     = "#635850"
M.cursor     = "#f3c09a"

-- Special backgrounds
M.bg_hl_line   = "#412f4f"
M.bg_region    = "#544a50"
M.bg_paren     = "#885566"
M.bg_hover     = "#795056"
M.bg_hover2    = "#665f7a"
M.bg_completion = "#503240"
M.bg_modeline  = "#675072"
M.fg_modeline  = "#fedeff"
M.bg_err       = "#501a2d"
M.bg_warning   = "#4e3930"
M.bg_info      = "#0f3f4f"

-- Hue families
M.red           = "#ff6f6f"
M.red_warmer    = "#ff7a5f"
M.red_cooler    = "#e47980"
M.red_faint     = "#f3a0a0"

M.green         = "#51b04f"
M.green_warmer  = "#7fce5f"
M.green_cooler  = "#3fc489"
M.green_faint   = "#a9c99f"

M.yellow        = "#c0b24f"
M.yellow_warmer = "#d09950"
M.yellow_cooler = "#deb07a"
M.yellow_faint  = "#caa89f"

M.blue          = "#57b0ff"
M.blue_warmer   = "#80aadf"
M.blue_cooler   = "#12b4ff"
M.blue_faint    = "#a0a0cf"

M.magenta       = "#ffaacf"
M.magenta_warm  = "#f498c0"
M.magenta_cool  = "#d0b0ff"
M.magenta_faint = "#e3b0c0"

M.cyan          = "#6fb3c0"
M.cyan_warmer   = "#8fcfd0"
M.cyan_cooler   = "#65c5a8"
M.cyan_faint    = "#99bfcf"

-- Intense/subtle backgrounds for search, diffs
M.bg_red_intense    = "#a02f50"
M.bg_green_intense  = "#30682f"
M.bg_yellow_intense = "#8f665f"
M.bg_blue_intense   = "#4f509f"
M.bg_magenta_intense = "#885997"
M.bg_cyan_intense   = "#0280b9"

M.bg_red_subtle    = "#6f202a"
M.bg_green_subtle  = "#2a532f"
M.bg_yellow_subtle = "#62432a"
M.bg_blue_subtle   = "#3a3e73"
M.bg_magenta_subtle = "#66345a"
M.bg_cyan_subtle   = "#334d69"

-- Diff backgrounds
M.bg_added          = "#304a4f"
M.bg_added_faint    = "#16383f"
M.bg_added_refine   = "#2f6767"
M.fg_added          = "#a0d0f0"

M.bg_changed        = "#51512f"
M.bg_changed_faint  = "#40332f"
M.bg_changed_refine = "#64651f"
M.fg_changed        = "#dada90"

M.bg_removed        = "#5a3142"
M.bg_removed_faint  = "#4a2034"
M.bg_removed_refine = "#782a4a"
M.fg_removed        = "#f0bfcf"

-- Semantic aliases (mirror ef-dream-palette-mappings-partial)
M.comment     = M.blue_faint     -- #a0a0cf
M.string      = M.red_faint      -- #f3a0a0
M.keyword     = M.yellow_cooler  -- #deb07a
M.type        = M.green_faint    -- #a9c99f
M.fnname      = M.cyan_warmer    -- #8fcfd0
M.fnname_call = M.cyan_faint     -- #99bfcf
M.constant    = M.blue_warmer    -- #80aadf
M.variable    = M.magenta        -- #ffaacf
M.builtin     = M.magenta_faint  -- #e3b0c0
M.variable_use = M.magenta_faint
M.preprocessor = M.cyan_cooler   -- #65c5a8
M.docstring   = M.yellow_faint   -- #caa89f
M.err         = M.magenta_warm   -- #f498c0
M.warning     = M.yellow_warmer  -- #d09950
M.info        = M.cyan           -- #6fb3c0
M.fg_link     = M.yellow_cooler  -- #deb07a
M.identifier  = M.yellow_cooler

-- Rainbow delimiters (rainbow-0 through rainbow-8)
M.rainbow = {
  M.yellow_cooler,  -- 0
  M.magenta,        -- 1
  M.blue_warmer,    -- 2
  M.red_cooler,     -- 3
  M.magenta_cool,   -- 4
  M.green_cooler,   -- 5
  M.cyan,           -- 6
  M.yellow,         -- 7
  M.red_faint,      -- 8
}

-- Light variant palette
local L = {}

-- Backgrounds (warm near-white with subtle purple tint)
L.bg_main     = "#f9f3f5"
L.bg_dim      = "#ede7ef"
L.bg_alt      = "#e3dce8"
L.bg_active   = "#cfc6d8"
L.bg_inactive = "#e6e0ea"
L.bg_popup    = "#f0eaf2"

-- Foregrounds
L.fg_main = "#2a1f2d"
L.fg_dim  = "#7a7080"
L.fg_alt  = "#5848a0"

-- UI accents
L.border = "#b8a8c0"
L.cursor = "#8a5010"

-- Special backgrounds
L.bg_hl_line    = "#e8d8f0"
L.bg_region     = "#ddd0e0"
L.bg_paren      = "#e8b8c8"
L.bg_hover      = "#e0b8c0"
L.bg_hover2     = "#d8cce8"
L.bg_completion = "#ead0e0"
L.bg_modeline   = "#d0c0e0"
L.fg_modeline   = "#2a1f2d"
L.bg_err        = "#f0c0c8"
L.bg_warning    = "#f0dcc0"
L.bg_info       = "#c0e0f0"

-- Hue families (darkened for legibility on light background)
L.red           = "#b02020"
L.red_warmer    = "#b03010"
L.red_cooler    = "#a03040"
L.red_faint     = "#c05858"

L.green         = "#2a7020"
L.green_warmer  = "#4a8020"
L.green_cooler  = "#107848"
L.green_faint   = "#5a8858"

L.yellow        = "#6a5810"
L.yellow_warmer = "#7a4810"
L.yellow_cooler = "#8a5818"
L.yellow_faint  = "#7a6040"

L.blue          = "#1848b0"
L.blue_warmer   = "#3060a0"
L.blue_cooler   = "#0060c0"
L.blue_faint    = "#5060a0"

L.magenta       = "#a02068"
L.magenta_warm  = "#a02060"
L.magenta_cool  = "#6040b0"
L.magenta_faint = "#906878"

L.cyan          = "#107080"
L.cyan_warmer   = "#208080"
L.cyan_cooler   = "#107860"
L.cyan_faint    = "#406878"

-- Intense/subtle backgrounds for search, diffs
L.bg_red_intense     = "#f0c0c8"
L.bg_green_intense   = "#c0e0b8"
L.bg_yellow_intense  = "#f0e0a8"
L.bg_blue_intense    = "#c0cce8"
L.bg_magenta_intense = "#e8c0d8"
L.bg_cyan_intense    = "#b0d8e8"

L.bg_red_subtle     = "#f8dce0"
L.bg_green_subtle   = "#d8ecd8"
L.bg_yellow_subtle  = "#f0e8c8"
L.bg_blue_subtle    = "#d8dff0"
L.bg_magenta_subtle = "#f0d8e8"
L.bg_cyan_subtle    = "#d0e8f0"

-- Diff backgrounds
L.bg_added          = "#c8e8d0"
L.bg_added_faint    = "#d8f0d8"
L.bg_added_refine   = "#a0d8a8"
L.fg_added          = "#0a4820"

L.bg_changed        = "#f0e8b8"
L.bg_changed_faint  = "#f8f0d0"
L.bg_changed_refine = "#e0d070"
L.fg_changed        = "#504010"

L.bg_removed        = "#f0c8d0"
L.bg_removed_faint  = "#f8d8e0"
L.bg_removed_refine = "#e8a0b0"
L.fg_removed        = "#601828"

-- Semantic aliases
L.comment      = "#7070a8"
L.string       = "#902020"
L.keyword      = "#7a4810"
L.type         = "#2a6828"
L.fnname       = "#107880"
L.fnname_call  = "#306878"
L.constant     = "#2050a0"
L.variable     = "#a02068"
L.builtin      = "#906878"
L.variable_use = "#906878"
L.preprocessor = "#107860"
L.docstring    = "#7a6040"
L.err          = "#a01840"
L.warning      = "#7a4810"
L.info         = "#107080"
L.fg_link      = "#7a4810"
L.identifier   = "#7a4810"

-- Rainbow delimiters
L.rainbow = {
  "#8a5818",  -- 0 yellow_cooler
  "#a02068",  -- 1 magenta
  "#2050a0",  -- 2 blue_warmer
  "#a03040",  -- 3 red_cooler
  "#6040b0",  -- 4 magenta_cool
  "#107848",  -- 5 green_cooler
  "#107080",  -- 6 cyan
  "#6a5810",  -- 7 yellow
  "#902020",  -- 8 red_faint
}

function M.get_palette()
  if vim.o.background == "light" then
    return L
  end
  return M
end

return M
