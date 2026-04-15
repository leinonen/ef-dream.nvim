local M = {}

function M.apply(p, cfg)
  require("ef-dream.highlights.editor").apply(p, cfg)
  require("ef-dream.highlights.syntax").apply(p, cfg)
  require("ef-dream.highlights.treesitter").apply(p, cfg)
  require("ef-dream.highlights.lsp").apply(p, cfg)
  require("ef-dream.highlights.git").apply(p, cfg)
  require("ef-dream.highlights.plugins").apply(p, cfg)
end

return M
