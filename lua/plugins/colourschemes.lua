  vim.pack.add { 'https://github.com/sainnhe/everforest' }

-- Theme options must be set before loading the colorscheme
vim.g.everforest_background = 'hard'
vim.g.everforest_enable_italic = 1
vim.g.everforest_transparent_background = 0
vim.g.everforest_ui_contrast = 'high'
vim.g.everforest_better_performance = 1

vim.opt.background = 'dark'
vim.cmd.colorscheme 'everforest'
