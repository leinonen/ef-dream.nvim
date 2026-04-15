local M = {}

function M.apply(p, cfg)
  local hi = function(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
  end

  local bg_normal = cfg.transparent_background and "NONE" or p.bg_main

  -- Core
  hi("Normal",       { fg = p.fg_main, bg = bg_normal })
  hi("NormalNC",     { fg = p.fg_dim, bg = cfg.transparent_background and "NONE" or p.bg_dim })
  hi("NormalFloat",  { fg = p.fg_main, bg = cfg.transparent_background and "NONE" or p.bg_popup })
  hi("FloatBorder",  { fg = p.border, bg = cfg.transparent_background and "NONE" or p.bg_popup })
  hi("FloatTitle",   { fg = p.fg_alt, bg = cfg.transparent_background and "NONE" or p.bg_popup, bold = true })
  hi("FloatFooter",  { fg = p.fg_dim, bg = cfg.transparent_background and "NONE" or p.bg_popup })

  -- Cursor
  hi("Cursor",       { fg = p.bg_main, bg = p.cursor })
  hi("CursorIM",     { fg = p.bg_main, bg = p.cursor })
  hi("TermCursor",   { fg = p.bg_main, bg = p.cursor })

  -- Lines
  hi("CursorLine",   { bg = p.bg_hl_line })
  hi("CursorColumn", { bg = p.bg_hl_line })
  hi("ColorColumn",  { bg = p.bg_alt })
  hi("LineNr",       { fg = p.fg_dim })
  hi("LineNrAbove",  { fg = p.fg_dim })
  hi("LineNrBelow",  { fg = p.fg_dim })
  hi("CursorLineNr", { fg = p.keyword, bold = true })
  hi("CursorLineFold", { fg = p.fg_dim, bg = p.bg_hl_line })
  hi("CursorLineSign", { bg = p.bg_hl_line })

  -- Sign column
  hi("SignColumn",   { fg = p.fg_dim, bg = cfg.transparent_background and "NONE" or p.bg_main })
  hi("FoldColumn",   { fg = p.fg_dim, bg = cfg.transparent_background and "NONE" or p.bg_main })
  hi("Folded",       { fg = p.fg_alt, bg = p.bg_dim, italic = true })

  -- Selection and search
  hi("Visual",       { bg = p.bg_region })
  hi("VisualNOS",    { bg = p.bg_region })
  hi("Search",       { fg = p.fg_main, bg = p.bg_yellow_intense })
  hi("CurSearch",    { fg = p.fg_main, bg = p.yellow_warmer, bold = true })
  hi("IncSearch",    { fg = p.fg_main, bg = p.yellow_warmer, bold = true })
  hi("Substitute",   { fg = p.fg_main, bg = p.bg_red_intense })

  -- Matching
  hi("MatchParen",   { bg = p.bg_paren, bold = true })

  -- Popup menu
  hi("Pmenu",        { fg = p.fg_main, bg = p.bg_popup })
  hi("PmenuSel",     { fg = p.fg_main, bg = p.bg_completion, bold = true })
  hi("PmenuSbar",    { bg = p.bg_alt })
  hi("PmenuThumb",   { bg = p.fg_dim })
  hi("PmenuExtra",   { fg = p.fg_dim, bg = p.bg_popup })
  hi("PmenuExtraSel",{ fg = p.fg_main, bg = p.bg_completion })
  hi("PmenuKind",    { fg = p.fg_alt, bg = p.bg_popup })
  hi("PmenuKindSel", { fg = p.fg_alt, bg = p.bg_completion })

  -- Statusline
  hi("StatusLine",   { fg = p.fg_modeline, bg = cfg.transparent_background and "NONE" or p.bg_modeline })
  hi("StatusLineNC", { fg = p.fg_dim, bg = cfg.transparent_background and "NONE" or p.bg_inactive })
  hi("StatusLineTerm",   { fg = p.fg_modeline, bg = p.bg_modeline })
  hi("StatusLineTermNC", { fg = p.fg_dim, bg = p.bg_inactive })

  -- Tabline
  hi("TabLine",      { fg = p.fg_dim, bg = cfg.transparent_background and "NONE" or p.bg_inactive })
  hi("TabLineFill",  { fg = p.fg_dim, bg = cfg.transparent_background and "NONE" or p.bg_dim })
  hi("TabLineSel",   { fg = p.fg_modeline, bg = p.bg_modeline, bold = true })

  -- Window
  hi("WinSeparator", { fg = p.border })
  hi("WinBar",       { fg = p.fg_main, bg = p.bg_dim })
  hi("WinBarNC",     { fg = p.fg_dim, bg = p.bg_dim })

  -- Non-text / structural
  hi("NonText",      { fg = p.bg_active })
  hi("EndOfBuffer",  { fg = p.bg_dim })
  hi("Whitespace",   { fg = p.bg_active })
  hi("SpecialKey",   { fg = p.bg_active })
  hi("Conceal",      { fg = p.fg_dim })

  -- Messages
  hi("ErrorMsg",     { fg = p.red, bg = p.bg_err, bold = true })
  hi("WarningMsg",   { fg = p.warning, bg = p.bg_warning })
  hi("ModeMsg",      { fg = p.fg_main, bold = true })
  hi("MsgArea",      { fg = p.fg_main })
  hi("MsgSeparator", { fg = p.border, bg = p.bg_dim })
  hi("MoreMsg",      { fg = p.green })
  hi("Question",     { fg = p.keyword, bold = true })

  -- Navigation
  hi("Directory",    { fg = p.blue, bold = true })
  hi("Title",        { fg = p.fg_alt, bold = true })

  -- Wildmenu
  hi("WildMenu",     { fg = p.fg_main, bg = p.bg_completion, bold = true })

  -- Quickfix
  hi("QuickFixLine", { bg = p.bg_hl_line })
  hi("qfLineNr",     { fg = p.fg_dim })
  hi("qfFileName",   { fg = p.blue })
  hi("qfError",      { fg = p.err })

  -- Spell
  hi("SpellBad",     { undercurl = true, sp = p.red })
  hi("SpellCap",     { undercurl = true, sp = p.blue })
  hi("SpellLocal",   { undercurl = true, sp = p.cyan })
  hi("SpellRare",    { undercurl = true, sp = p.magenta })

  -- Diff (UI)
  hi("DiffAdd",      { fg = p.fg_added, bg = p.bg_added })
  hi("DiffChange",   { fg = p.fg_changed, bg = p.bg_changed })
  hi("DiffDelete",   { fg = p.fg_removed, bg = p.bg_removed })
  hi("DiffText",     { fg = p.fg_changed, bg = p.bg_changed_refine, bold = true })

  -- Cursor & visual helpers
  hi("lCursor",      { fg = p.bg_main, bg = p.cursor })
  hi("CursorSearch", { fg = p.fg_main, bg = p.yellow_warmer })
end

return M
