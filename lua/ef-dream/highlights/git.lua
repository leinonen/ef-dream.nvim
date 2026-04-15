local M = {}

function M.apply(p, cfg)
  local hi = function(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
  end

  -- Built-in diff filetype groups
  hi("diffAdded",    { fg = p.fg_added })
  hi("diffRemoved",  { fg = p.fg_removed })
  hi("diffChanged",  { fg = p.fg_changed })
  hi("diffFile",     { fg = p.blue, bold = true })
  hi("diffNewFile",  { fg = p.green })
  hi("diffOldFile",  { fg = p.red })
  hi("diffIndexLine",{ fg = p.fg_alt })
  hi("diffLine",     { fg = p.fg_dim })
  hi("diffSubname",  { fg = p.fg_dim })

  -- gitsigns.nvim
  hi("GitSignsAdd",    { fg = p.green })
  hi("GitSignsChange", { fg = p.yellow_warmer })
  hi("GitSignsDelete", { fg = p.red })
  hi("GitSignsAddNr",    { link = "GitSignsAdd" })
  hi("GitSignsChangeNr", { link = "GitSignsChange" })
  hi("GitSignsDeleteNr", { link = "GitSignsDelete" })
  hi("GitSignsAddLn",    { bg = p.bg_added_faint })
  hi("GitSignsChangeLn", { bg = p.bg_changed_faint })
  hi("GitSignsDeleteLn", { bg = p.bg_removed_faint })
  hi("GitSignsAddPreview",    { fg = p.fg_added, bg = p.bg_added })
  hi("GitSignsDeletePreview", { fg = p.fg_removed, bg = p.bg_removed })
  hi("GitSignsCurrentLineBlame", { fg = p.fg_dim, italic = true })
  hi("GitSignsUntracked", { fg = p.fg_dim })

  -- vim-fugitive / git commit filetype
  hi("gitcommitOverflow",  { fg = p.red })
  hi("gitcommitSummary",   { fg = p.fg_main })
  hi("gitcommitComment",   { link = "Comment" })
  hi("gitcommitUntracked", { fg = p.fg_dim })
  hi("gitcommitDiscarded", { fg = p.fg_dim })
  hi("gitcommitSelected",  { fg = p.green })
  hi("gitcommitHeader",    { fg = p.fg_alt, bold = true })
  hi("gitcommitSelectedType", { fg = p.green })
  hi("gitcommitUnmergedType", { fg = p.red })
  hi("gitcommitDiscardedType",{ fg = p.red_faint })
  hi("gitcommitBranch",    { fg = p.magenta_warm, bold = true })
  hi("gitcommitNoBranch",  { link = "gitcommitBranch" })
  hi("gitcommitFile",      { fg = p.cyan_warmer })
end

return M
