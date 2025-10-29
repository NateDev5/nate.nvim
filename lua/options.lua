vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.winborder = "rounded"
vim.o.swapfile = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.background = "dark"

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true
})
