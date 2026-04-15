local M = {}

function M.apply(p, cfg)
  local hi = function(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
  end

  -- Comments
  hi("@comment",               { link = "Comment" })
  hi("@comment.documentation", { fg = p.docstring, italic = cfg.italic_comments })
  hi("@comment.error",         { fg = p.red, bold = true })
  hi("@comment.warning",       { fg = p.warning, bold = true })
  hi("@comment.todo",          { fg = p.warning, bg = p.bg_warning, bold = true })
  hi("@comment.note",          { fg = p.info, bold = true })

  -- Keywords
  hi("@keyword",               { link = "Keyword" })
  hi("@keyword.function",      { fg = p.keyword, italic = cfg.italic_keywords })
  hi("@keyword.operator",      { fg = p.fg_main })
  hi("@keyword.return",        { fg = p.red_cooler, italic = cfg.italic_keywords })
  hi("@keyword.conditional",   { link = "Conditional" })
  hi("@keyword.conditional.ternary", { fg = p.fg_main })
  hi("@keyword.repeat",        { link = "Repeat" })
  hi("@keyword.import",        { fg = p.preprocessor })
  hi("@keyword.exception",     { fg = p.red_cooler })
  hi("@keyword.debug",         { fg = p.red })
  hi("@keyword.directive",     { fg = p.preprocessor })
  hi("@keyword.directive.define", { fg = p.preprocessor })
  hi("@keyword.coroutine",     { fg = p.keyword, italic = cfg.italic_keywords })
  hi("@keyword.modifier",      { fg = p.keyword })
  hi("@keyword.type",          { fg = p.type })

  -- Identifiers
  hi("@variable",              { fg = p.variable, italic = cfg.italic_variables })
  hi("@variable.builtin",      { fg = p.builtin, italic = cfg.italic_variables })
  hi("@variable.parameter",    { fg = p.yellow_faint })
  hi("@variable.parameter.builtin", { fg = p.builtin })
  hi("@variable.member",       { fg = p.magenta_faint })

  -- Functions
  hi("@function",              { link = "Function" })
  hi("@function.call",         { fg = p.fnname_call, italic = cfg.italic_functions })
  hi("@function.builtin",      { fg = p.builtin, italic = cfg.italic_functions })
  hi("@function.macro",        { fg = p.preprocessor })
  hi("@function.method",       { link = "Function" })
  hi("@function.method.call",  { fg = p.fnname_call, italic = cfg.italic_functions })

  -- Types
  hi("@type",                  { link = "Type" })
  hi("@type.builtin",          { fg = p.builtin })
  hi("@type.qualifier",        { fg = p.keyword })
  hi("@type.definition",       { link = "Type" })

  -- Constants
  hi("@constant",              { link = "Constant" })
  hi("@constant.builtin",      { fg = p.builtin })
  hi("@constant.macro",        { fg = p.preprocessor })

  -- Constructors
  hi("@constructor",           { fg = p.type })

  -- Strings
  hi("@string",                { link = "String" })
  hi("@string.documentation",  { fg = p.docstring })
  hi("@string.escape",         { link = "SpecialChar" })
  hi("@string.special",        { link = "SpecialChar" })
  hi("@string.special.symbol", { fg = p.cyan_cooler })
  hi("@string.special.url",    { fg = p.fg_link, underline = true })
  hi("@string.regex",          { fg = p.cyan_cooler })

  -- Literals
  hi("@number",                { link = "Number" })
  hi("@number.float",          { link = "Float" })
  hi("@boolean",               { link = "Boolean" })
  hi("@character",             { link = "Character" })
  hi("@character.special",     { link = "SpecialChar" })

  -- Namespace / module
  hi("@namespace",             { fg = p.fg_alt })
  hi("@module",                { fg = p.fg_alt })
  hi("@module.builtin",        { fg = p.builtin })
  hi("@label",                 { link = "Label" })

  -- Operators and punctuation
  hi("@operator",              { link = "Operator" })
  hi("@punctuation.bracket",   { fg = p.fg_dim })
  hi("@punctuation.delimiter", { link = "Delimiter" })
  hi("@punctuation.special",   { link = "SpecialChar" })

  -- Attributes / decorators
  hi("@attribute",             { fg = p.preprocessor })
  hi("@attribute.builtin",     { fg = p.builtin })

  -- Tags (HTML/JSX/XML)
  hi("@tag",                   { fg = p.cyan })
  hi("@tag.builtin",           { fg = p.cyan_warmer })
  hi("@tag.attribute",         { fg = p.yellow_faint })
  hi("@tag.delimiter",         { fg = p.fg_dim })

  -- Misc
  hi("@error",                 { fg = p.red })
  hi("@none",                  {})

  -- Text / markup (Neovim 0.9 legacy @text.* namespace)
  hi("@text",                  { fg = p.fg_main })
  hi("@text.strong",           { bold = true })
  hi("@text.emphasis",         { italic = true })
  hi("@text.underline",        { underline = true })
  hi("@text.strike",           { strikethrough = true })
  hi("@text.title",            { link = "Title" })
  hi("@text.literal",          { fg = p.blue_warmer })
  hi("@text.quote",            { fg = p.docstring, italic = true })
  hi("@text.uri",              { fg = p.fg_link, underline = true })
  hi("@text.reference",        { fg = p.cyan_warmer })
  hi("@text.todo",             { fg = p.warning, bg = p.bg_warning, bold = true })
  hi("@text.note",             { fg = p.info, bold = true })
  hi("@text.warning",          { fg = p.warning, bold = true })
  hi("@text.danger",           { fg = p.err, bold = true })
  hi("@text.diff.add",         { fg = p.fg_added, bg = p.bg_added })
  hi("@text.diff.delete",      { fg = p.fg_removed, bg = p.bg_removed })

  -- Markup (Neovim 0.10+ @markup.* namespace)
  hi("@markup.strong",         { bold = true })
  hi("@markup.italic",         { italic = true })
  hi("@markup.strikethrough",  { strikethrough = true })
  hi("@markup.underline",      { underline = true })
  hi("@markup.heading",        { link = "Title" })
  hi("@markup.heading.1",      { fg = p.magenta_warm, bold = true })
  hi("@markup.heading.2",      { fg = p.fg_alt, bold = true })
  hi("@markup.heading.3",      { fg = p.yellow_cooler, bold = true })
  hi("@markup.heading.4",      { fg = p.cyan_warmer, bold = true })
  hi("@markup.heading.5",      { fg = p.green_cooler, bold = true })
  hi("@markup.heading.6",      { fg = p.blue_warmer, bold = true })
  hi("@markup.quote",          { fg = p.docstring, italic = true })
  hi("@markup.math",           { fg = p.cyan_cooler })
  hi("@markup.raw",            { fg = p.blue_warmer })
  hi("@markup.raw.block",      { fg = p.blue_warmer })
  hi("@markup.link",           { fg = p.fg_link })
  hi("@markup.link.label",     { fg = p.cyan_warmer })
  hi("@markup.link.url",       { fg = p.fg_link, underline = true })
  hi("@markup.list",           { fg = p.yellow_cooler })
  hi("@markup.list.checked",   { fg = p.cyan_warmer })
  hi("@markup.list.unchecked", { fg = p.fg_dim })

  -- LSP semantic tokens (mapped to same semantics)
  hi("@lsp.type.class",         { link = "Type" })
  hi("@lsp.type.comment",       { link = "Comment" })
  hi("@lsp.type.decorator",     { fg = p.preprocessor })
  hi("@lsp.type.enum",          { link = "Type" })
  hi("@lsp.type.enumMember",    { link = "Constant" })
  hi("@lsp.type.function",      { link = "Function" })
  hi("@lsp.type.interface",     { fg = p.type })
  hi("@lsp.type.keyword",       { link = "Keyword" })
  hi("@lsp.type.macro",         { fg = p.preprocessor })
  hi("@lsp.type.method",        { link = "Function" })
  hi("@lsp.type.namespace",     { fg = p.fg_alt })
  hi("@lsp.type.number",        { link = "Number" })
  hi("@lsp.type.operator",      { link = "Operator" })
  hi("@lsp.type.parameter",     { fg = p.yellow_faint })
  hi("@lsp.type.property",      { fg = p.magenta_faint })
  hi("@lsp.type.regexp",        { fg = p.cyan_cooler })
  hi("@lsp.type.string",        { link = "String" })
  hi("@lsp.type.struct",        { link = "Structure" })
  hi("@lsp.type.type",          { link = "Type" })
  hi("@lsp.type.typeParameter", { fg = p.type })
  hi("@lsp.type.variable",      { fg = p.variable, italic = cfg.italic_variables })
  hi("@lsp.mod.deprecated",     { strikethrough = true })
  hi("@lsp.mod.readonly",       { fg = p.constant })
  hi("@lsp.mod.static",         { fg = p.blue_warmer })
end

return M
