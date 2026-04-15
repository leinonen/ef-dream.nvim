local M = {}

function M.apply(p, cfg)
  local hi = function(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
  end

  -- Diagnostics — signs and virtual text foregrounds
  hi("DiagnosticError", { fg = p.red })
  hi("DiagnosticWarn",  { fg = p.warning })
  hi("DiagnosticInfo",  { fg = p.info })
  hi("DiagnosticHint",  { fg = p.fg_alt })
  hi("DiagnosticOk",    { fg = p.green })

  -- Underlines
  hi("DiagnosticUnderlineError", { undercurl = true, sp = p.red })
  hi("DiagnosticUnderlineWarn",  { undercurl = true, sp = p.warning })
  hi("DiagnosticUnderlineInfo",  { undercurl = true, sp = p.info })
  hi("DiagnosticUnderlineHint",  { undercurl = true, sp = p.fg_alt })
  hi("DiagnosticUnderlineOk",    { undercurl = true, sp = p.green })

  -- Virtual text (with colored backgrounds)
  hi("DiagnosticVirtualTextError", { fg = p.red,     bg = p.bg_err })
  hi("DiagnosticVirtualTextWarn",  { fg = p.warning, bg = p.bg_warning })
  hi("DiagnosticVirtualTextInfo",  { fg = p.info,    bg = p.bg_info })
  hi("DiagnosticVirtualTextHint",  { fg = p.fg_alt,  bg = p.bg_dim })
  hi("DiagnosticVirtualTextOk",    { fg = p.green,   bg = p.bg_green_subtle })

  -- Signs (link to base diagnostic groups)
  hi("DiagnosticSignError", { link = "DiagnosticError" })
  hi("DiagnosticSignWarn",  { link = "DiagnosticWarn" })
  hi("DiagnosticSignInfo",  { link = "DiagnosticInfo" })
  hi("DiagnosticSignHint",  { link = "DiagnosticHint" })
  hi("DiagnosticSignOk",    { link = "DiagnosticOk" })

  -- Deprecated
  hi("DiagnosticDeprecated", { strikethrough = true, sp = p.fg_dim })
  hi("DiagnosticUnnecessary", { fg = p.fg_dim })

  -- LSP references (hover/document highlight)
  hi("LspReferenceText",  { bg = p.bg_hover })
  hi("LspReferenceRead",  { bg = p.bg_hover })
  hi("LspReferenceWrite", { bg = p.bg_hover2, bold = true })

  -- Inlay hints
  hi("LspInlayHint", { fg = p.fg_dim, bg = p.bg_dim, italic = true })

  -- Code lens
  hi("LspCodeLens",          { fg = p.fg_dim, italic = true })
  hi("LspCodeLensSeparator", { fg = p.border })

  -- Signature help
  hi("LspSignatureActiveParameter", { fg = p.keyword, underline = true })
end

return M
