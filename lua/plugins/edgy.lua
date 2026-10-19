vim.pack.add { 
  "https://github.com/folke/edgy.nvim",
  "https://github.com/stevearc/aerial.nvim",
}


vim.opt.splitkeep = "screen"
vim.opt.laststatus = 3
vim.opt.fillchars = {
  eob = " ",
  horiz = "─", horizup = "┴", horizdown = "┬",
  vert = "│", vertleft = "┤", vertright = "├", verthoriz = "┼",
}

local function fg_of(group)
  return vim.api.nvim_get_hl(0, { name = group, link = false }).fg
end

local function apply_hl()
  local fg
  for _, g in ipairs({ "CursorLineNr", "Function", "Directory", "Normal" }) do
    fg = fg_of(g)
    if fg then break end
  end
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = fg, bg = "NONE" })
  vim.api.nvim_set_hl(0, "EdgyNormal", { link = "Normal" })
  vim.api.nvim_set_hl(0, "EdgyWinBar", { link = "Normal" })
end

apply_hl()
vim.api.nvim_create_autocmd("ColorScheme", { callback = apply_hl })

require("aerial").setup({ attach_mode = "global" })

require("edgy").setup({
  left = {
    {
      title = "Files",
      ft = "neo-tree",
      filter = function(buf) return vim.b[buf].neo_tree_source == "filesystem" end,
      pinned = true,
      open = "Neotree position=left filesystem",
      size = { height = 0.5 },
    },
    {
      title = "Outline",
      ft = "aerial",
      pinned = true,
      open = "AerialOpen!",
    },
    "neo-tree", -- catch-all for any other neo-tree window
  },
  bottom = { { ft = "toggleterm", title = "Terminal", size = { height = 15 } } },
  animate = { enabled = false },
})
