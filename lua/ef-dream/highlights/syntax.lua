local M = {}

function M.apply(p, cfg)
  local hi = function(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
  end

  hi("Comment",        { fg = p.comment, italic = cfg.italic_comments })
  hi("SpecialComment", { fg = p.comment, bold = true })

  hi("Constant",   { fg = p.constant })
  hi("String",     { fg = p.string })
  hi("Character",  { fg = p.string })
  hi("Number",     { fg = p.constant })
  hi("Boolean",    { fg = p.keyword, bold = true })
  hi("Float",      { fg = p.constant })

  hi("Identifier", { fg = p.variable, italic = cfg.italic_variables })
  hi("Function",   { fg = p.fnname, italic = cfg.italic_functions })

  hi("Statement",   { fg = p.keyword, italic = cfg.italic_keywords })
  hi("Conditional", { fg = p.keyword, italic = cfg.italic_keywords })
  hi("Repeat",      { fg = p.keyword, italic = cfg.italic_keywords })
  hi("Label",       { fg = p.keyword })
  hi("Operator",    { fg = p.fg_main })
  hi("Keyword",     { fg = p.keyword, italic = cfg.italic_keywords })
  hi("Exception",   { fg = p.red_cooler })

  hi("PreProc",   { fg = p.preprocessor })
  hi("Include",   { fg = p.preprocessor })
  hi("Define",    { fg = p.preprocessor })
  hi("Macro",     { fg = p.preprocessor })
  hi("PreCondit", { fg = p.preprocessor })

  hi("Type",         { fg = p.type })
  hi("StorageClass", { fg = p.type })
  hi("Structure",    { fg = p.type })
  hi("Typedef",      { fg = p.type })

  hi("Special",        { fg = p.yellow_cooler })
  hi("SpecialChar",    { fg = p.red_warmer })
  hi("Tag",            { fg = p.cyan })
  hi("Delimiter",      { fg = p.fg_dim })
  hi("Debug",          { fg = p.red })

  hi("Underlined", { fg = p.fg_link, underline = true })
  hi("Ignore",     { fg = p.fg_dim })
  hi("Error",      { fg = p.red, bg = p.bg_err, bold = true })
  hi("Todo",       { fg = p.warning, bg = p.bg_warning, bold = true })
  hi("Bold",       { bold = true })
  hi("Italic",     { italic = true })
end

return M
