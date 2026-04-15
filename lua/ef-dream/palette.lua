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

return M
