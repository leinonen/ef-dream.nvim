# ef-dream.nvim

A Neovim colorscheme based on [ef-dream](https://github.com/protesilaos/ef-themes) by Protesilaos Stavrou — a dark purple-grey theme with warm beige foreground, gold keywords, soft cyan functions, and pink variables.

## Colors

| Role | Color |
|------|-------|
| Background | `#232025` (dark purple-grey) |
| Foreground | `#efd5c5` (warm beige) |
| Comments | `#a0a0cf` (blue-faint) |
| Strings | `#f3a0a0` (red-faint) |
| Keywords | `#deb07a` (yellow-cooler / gold) |
| Functions | `#8fcfd0` (cyan-warmer) |
| Variables | `#ffaacf` (magenta) |
| Types | `#a9c99f` (green-faint) |
| Constants | `#80aadf` (blue-warmer) |

## Installation

**lazy.nvim:**
```lua
{
  "leinonen/ef-dream.nvim",
  priority = 1000,
  config = function()
    require("ef-dream").setup({
      -- defaults shown
      italic_comments  = true,
      italic_keywords  = false,
      italic_functions = false,
      italic_variables = false,
      transparent_background = false,
      terminal_colors  = true,
    })
    vim.cmd.colorscheme("ef-dream")
  end,
}
```

**packer.nvim:**
```lua
use {
  "leinonen/ef-dream.nvim",
  config = function()
    vim.cmd.colorscheme("ef-dream")
  end,
}
```

**Minimal (no plugin manager):**
```vim
colorscheme ef-dream
```

## Configuration

Call `setup()` before loading the colorscheme:

```lua
require("ef-dream").setup({
  italic_comments = true,      -- italic comment tokens
  italic_keywords = false,     -- italic keyword tokens
  italic_functions = false,    -- italic function names
  italic_variables = false,    -- italic variable names
  transparent_background = false, -- transparent Normal/Float backgrounds
  terminal_colors = true,      -- set vim.g.terminal_color_0..15
})
vim.cmd.colorscheme("ef-dream")
```

## Plugin support

Highlight groups included for:

- **Treesitter** — full `@` namespace, both 0.9 (`@text.*`) and 0.10+ (`@markup.*`) APIs
- **LSP** — diagnostics, virtual text, references, inlay hints, code lens
- **telescope.nvim**
- **nvim-cmp**
- **gitsigns.nvim**
- **indent-blankline.nvim** (v2 and v3)
- **rainbow-delimiters.nvim**
- **nvim-tree.lua** / **neo-tree.nvim**
- **which-key.nvim**
- **nvim-notify**
- **noice.nvim**
- **mini.nvim** (indentscope, statusline, tabline, jump, cursorword, diff)

## Credits

Color palette by [Protesilaos Stavrou](https://protesilaos.com) — [ef-themes](https://github.com/protesilaos/ef-themes), licensed under GPL-3.0.
