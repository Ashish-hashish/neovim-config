-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

vim.keymap.set('n', '\\', '<Cmd>Neotree reveal<CR>', { desc = 'NeoTree reveal', silent = true })

require("neo-tree").setup({
  window = { width = 30 },
  default_component_configs = { indent = { with_markers = true } },
    filesystem = {
    window = {
      mappings = {
        ['\\'] = 'close_window',
      },
    },
  },
})
vim.api.nvim_set_hl(0, "NeoTreeNormal", { link = "Normal" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { link = "Normal" })
