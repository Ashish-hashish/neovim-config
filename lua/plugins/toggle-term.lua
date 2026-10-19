-- toggle-term
-- https://github.com/akinsho/toggleterm.nvim
vim.pack.add { "https://github.com/akinsho/toggleterm.nvim" } 
require("toggleterm").setup{
	open_mapping = [[<c-\>]],
	direction = "horizontal",
	size = 12,
	hide_numbers = true,
	shade_terminals = false,  -- same bg as code
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	close_on_exit = true,
	shell = vim.o.shell,
}
