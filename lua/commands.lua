vim.cmd("colorscheme vague")

vim.api.nvim_create_autocmd({"WinEnter", "BufEnter"}, {
    callback = function()
		if vim.bo.filetype == "oil" then 
			vim.opt_local.number = false
		return 
		end
        vim.opt_local.statuscolumn = " %{printf('%3d', v:lnum)} ┃ %{printf('%-3d', v:relnum)}"
    end
})

vim.api.nvim_create_autocmd("WinLeave", {
    callback = function()
		if vim.bo.filetype == "oil" then return end
        vim.opt_local.statuscolumn = " %{v:lnum}"
    end
})
