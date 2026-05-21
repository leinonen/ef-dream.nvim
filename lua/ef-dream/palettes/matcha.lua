-- ef-matcha palettes
-- Matcha/zen aesthetic: forest greens, bamboo yellows, cherry blossom pinks,
-- mountain blues, stone grays, wisteria purples, terracotta reds.

local M = {}

-- ── DARK ─────────────────────────────────────────────────────────────────────
-- Mood: forest night, moonlit zen garden, dark matcha ceremony

local dark = {}

-- Backgrounds
dark.bg_main     = "#171e16"  -- deep forest, near-black green
dark.bg_dim      = "#1d2720"  -- forest shadow
dark.bg_alt      = "#253028"  -- mossy ground
dark.bg_active   = "#37483a"  -- lit stone
dark.bg_inactive = "#1f2c21"  -- dim understory
dark.bg_popup    = "#1b2520"  -- quiet alcove

-- Foregrounds
dark.fg_main = "#cee4c0"  -- pale sage leaf
dark.fg_dim  = "#6c8a60"  -- moss gray
dark.fg_alt  = "#90c080"  -- mid sage

-- UI accents
dark.border = "#3a5038"  -- stone moss
dark.cursor = "#7abe58"  -- fresh matcha shoot

-- Special backgrounds
dark.bg_hl_line    = "#1e3020"
dark.bg_region     = "#2a4030"
dark.bg_paren      = "#3a5a38"
dark.bg_hover      = "#304838"
dark.bg_hover2     = "#344030"
dark.bg_completion = "#243828"
dark.bg_modeline   = "#2e5038"
dark.fg_modeline   = "#b8d8a8"
dark.bg_err        = "#3a1810"
dark.bg_warning    = "#38300c"
dark.bg_info       = "#0e3024"

-- Hue families
dark.red           = "#d87060"  -- autumn maple
dark.red_warmer    = "#d06040"  -- burnt sienna
dark.red_cooler    = "#b87860"  -- terracotta
dark.red_faint     = "#c09880"  -- clay

dark.green         = "#68b84e"  -- fresh matcha
dark.green_warmer  = "#88c850"  -- bamboo shoot
dark.green_cooler  = "#50b880"  -- jade leaf
dark.green_faint   = "#88b880"  -- sage faint

dark.yellow        = "#c0a838"  -- golden bamboo
dark.yellow_warmer = "#c09838"  -- aged bamboo stalk
dark.yellow_cooler = "#b0a868"  -- tatami mat
dark.yellow_faint  = "#a8a878"  -- dry reed

dark.blue          = "#6090b8"  -- mountain pool
dark.blue_warmer   = "#7898b0"  -- misty mountain
dark.blue_cooler   = "#4898c0"  -- clear stream
dark.blue_faint    = "#8898b0"  -- morning fog

dark.magenta       = "#c08898"  -- cherry blossom
dark.magenta_warm  = "#b87880"  -- pink plum
dark.magenta_cool  = "#a088c0"  -- wisteria
dark.magenta_faint = "#b09098"  -- pale sakura

dark.cyan          = "#60a890"  -- green tea water
dark.cyan_warmer   = "#78b8a0"  -- jade creek
dark.cyan_cooler   = "#50a880"  -- forest pool
dark.cyan_faint    = "#88a898"  -- morning mist

-- Intense backgrounds (search, highlights)
dark.bg_red_intense     = "#5a2018"
dark.bg_green_intense   = "#1e5a18"
dark.bg_yellow_intense  = "#4a4010"
dark.bg_blue_intense    = "#1a3878"
dark.bg_magenta_intense = "#4a2858"
dark.bg_cyan_intense    = "#0e4840"

dark.bg_red_subtle     = "#3a1810"
dark.bg_green_subtle   = "#183a10"
dark.bg_yellow_subtle  = "#382e08"
dark.bg_blue_subtle    = "#102858"
dark.bg_magenta_subtle = "#301840"
dark.bg_cyan_subtle    = "#0a3028"

-- Diff backgrounds
dark.bg_added          = "#1e4428"
dark.bg_added_faint    = "#122e18"
dark.bg_added_refine   = "#206038"
dark.fg_added          = "#90d8a8"

dark.bg_changed        = "#3c3c18"
dark.bg_changed_faint  = "#2e2c10"
dark.bg_changed_refine = "#505010"
dark.fg_changed        = "#c8c870"

dark.bg_removed        = "#4a2018"
dark.bg_removed_faint  = "#381408"
dark.bg_removed_refine = "#6a2810"
dark.fg_removed        = "#e8a890"

-- Semantic aliases
dark.comment      = dark.blue_faint      -- morning fog
dark.string       = dark.red_faint       -- clay
dark.keyword      = dark.yellow_cooler   -- tatami
dark.type         = dark.green_faint     -- sage
dark.fnname       = dark.cyan_warmer     -- jade creek
dark.fnname_call  = dark.cyan_faint      -- morning mist
dark.constant     = dark.blue_warmer     -- misty mountain
dark.variable     = dark.magenta         -- cherry blossom
dark.builtin      = dark.magenta_faint   -- pale sakura
dark.variable_use = dark.magenta_faint
dark.preprocessor = dark.cyan_cooler     -- forest pool
dark.docstring    = dark.yellow_faint    -- dry reed
dark.err          = dark.magenta_warm    -- pink plum
dark.warning      = dark.yellow_warmer   -- aged bamboo
dark.info         = dark.cyan            -- green tea water
dark.fg_link      = dark.yellow_cooler   -- tatami
dark.identifier   = dark.yellow_cooler

dark.rainbow = {
  dark.yellow_cooler,  -- 0
  dark.magenta,        -- 1
  dark.blue_warmer,    -- 2
  dark.red_cooler,     -- 3
  dark.magenta_cool,   -- 4
  dark.green_cooler,   -- 5
  dark.cyan,           -- 6
  dark.yellow,         -- 7
  dark.red_faint,      -- 8
}

M.dark = dark

-- ── LIGHT ────────────────────────────────────────────────────────────────────
-- Mood: morning light through shoji screens, rice paper, stone garden, wabi-sabi

local light = {}

-- Backgrounds
light.bg_main     = "#f2f7ee"  -- rice paper with sage tint
light.bg_dim      = "#e4eed8"  -- slight green cast
light.bg_alt      = "#d6e6c8"  -- deeper sage tint
light.bg_active   = "#b8d4a4"  -- active sage
light.bg_inactive = "#dcecd0"  -- pale understory
light.bg_popup    = "#edf4e6"  -- fresh alcove

-- Foregrounds
light.fg_main = "#182418"  -- deep forest ink
light.fg_dim  = "#527048"  -- mid forest
light.fg_alt  = "#2a5c30"  -- rich forest

-- UI accents
light.border = "#78ae68"  -- bamboo
light.cursor = "#2a5820"  -- dark matcha

-- Special backgrounds
light.bg_hl_line    = "#d8eec8"
light.bg_region     = "#c4e0b0"
light.bg_paren      = "#c0daa0"
light.bg_hover      = "#c8dab0"
light.bg_hover2     = "#c0d8b8"
light.bg_completion = "#d0e8bc"
light.bg_modeline   = "#aacca0"
light.fg_modeline   = "#182418"
light.bg_err        = "#f0ccc0"
light.bg_warning    = "#f0e8b8"
light.bg_info       = "#bee0cc"

-- Hue families (deep, saturated for legibility on light background)
light.red           = "#882010"  -- deep autumn
light.red_warmer    = "#882808"  -- burnt umber
light.red_cooler    = "#783040"  -- deep terracotta
light.red_faint     = "#8a4838"  -- mid clay

light.green         = "#286818"  -- dark matcha
light.green_warmer  = "#387018"  -- bamboo grove
light.green_cooler  = "#106848"  -- deep jade
light.green_faint   = "#487848"  -- sage green

light.yellow        = "#5a4808"  -- dark bamboo
light.yellow_warmer = "#623808"  -- deep ochre
light.yellow_cooler = "#504808"  -- tatami dark
light.yellow_faint  = "#584830"  -- weathered wood

light.blue          = "#183880"  -- mountain ink
light.blue_warmer   = "#285898"  -- deep mountain pool
light.blue_cooler   = "#104890"  -- deep stream
light.blue_faint    = "#385080"  -- fog ink

light.magenta       = "#881048"  -- plum blossom
light.magenta_warm  = "#800840"  -- dark rose
light.magenta_cool  = "#4c2888"  -- dark wisteria
light.magenta_faint = "#6c4860"  -- dried sakura

light.cyan          = "#0a5858"  -- deep tea green
light.cyan_warmer   = "#186060"  -- deep jade water
light.cyan_cooler   = "#0a5840"  -- deep forest pool
light.cyan_faint    = "#285060"  -- stone water

-- Intense/subtle backgrounds
light.bg_red_intense     = "#f0c8c0"
light.bg_green_intense   = "#c0e0b0"
light.bg_yellow_intense  = "#f0e8a8"
light.bg_blue_intense    = "#c0d0e8"
light.bg_magenta_intense = "#e8c8d8"
light.bg_cyan_intense    = "#b8e0d4"

light.bg_red_subtle     = "#f8dcd8"
light.bg_green_subtle   = "#d8ecd0"
light.bg_yellow_subtle  = "#f4f0d0"
light.bg_blue_subtle    = "#d4dff0"
light.bg_magenta_subtle = "#f0d8e8"
light.bg_cyan_subtle    = "#d0eae8"

-- Diff backgrounds
light.bg_added          = "#c8e8c0"
light.bg_added_faint    = "#d8f0d0"
light.bg_added_refine   = "#a8d8a0"
light.fg_added          = "#0a4018"

light.bg_changed        = "#f0e8b0"
light.bg_changed_faint  = "#f8f0c8"
light.bg_changed_refine = "#dcc860"
light.fg_changed        = "#403808"

light.bg_removed        = "#f0c8c0"
light.bg_removed_faint  = "#f8d8d0"
light.bg_removed_refine = "#e0a098"
light.fg_removed        = "#601010"

-- Semantic aliases
light.comment      = "#5a7850"            -- forest moss
light.string       = light.red_faint      -- mid clay
light.keyword      = light.yellow_cooler  -- tatami dark
light.type         = light.green_faint    -- sage green
light.fnname       = light.cyan_warmer    -- deep jade water
light.fnname_call  = light.cyan_faint     -- stone water
light.constant     = light.blue_warmer    -- deep mountain pool
light.variable     = light.magenta        -- plum blossom
light.builtin      = light.magenta_faint  -- dried sakura
light.variable_use = light.magenta_faint
light.preprocessor = light.cyan_cooler    -- deep forest pool
light.docstring    = light.yellow_faint   -- weathered wood
light.err          = light.magenta_warm   -- dark rose
light.warning      = light.yellow_warmer  -- deep ochre
light.info         = light.cyan           -- deep tea green
light.fg_link      = light.yellow_cooler  -- tatami dark
light.identifier   = light.yellow_cooler

light.rainbow = {
  light.yellow_cooler,  -- 0
  light.magenta,        -- 1
  light.blue_warmer,    -- 2
  light.red_cooler,     -- 3
  light.magenta_cool,   -- 4
  light.green_cooler,   -- 5
  light.cyan,           -- 6
  light.yellow,         -- 7
  light.red_faint,      -- 8
}

M.light = light

return M
