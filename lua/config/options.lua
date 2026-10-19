do
  vim.o.number = true
  vim.o.mouse = 'a'
  vim.o.showmode = false

  vim.o.undofile = true
  vim.o.breakindent = true

  vim.o.ignorecase = true
  vim.o.smartcase = true

  vim.o.signcolumn = 'auto'

  vim.o.updatetime = 750 
  vim.o.timeoutlen = 750

  -- Configure how new splits should be opened
  vim.o.splitright = true
  vim.o.splitbelow = true

  vim.o.list = true
  vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
  vim.opt.winborder = "rounded"  
  vim.opt.laststatus = 3
  vim.api.nvim_set_hl(0, "WinSeparator", { link = "FloatBorder" })

  --preview substitutions in real time
  vim.o.inccommand = 'split'

  vim.o.cursorline = true

  vim.o.scrolloff = 10

  vim.o.confirm = true

  vim.g.have_nerd_font = true

end

