require("options")
require("packs")
require("keymaps")

require("vague").setup({ transparent = false })
require("oil").setup({
	float = {
		padding = 20,
		win_options = {
			winblend = 10
		},
		max_width = 200,
		max_height = 200,
	},
	view_options = {
		show_hidden = true
	},
	skip_confirm_for_simple_edits = true
})

require("commands")
require("lsp")

require("lualine").setup()
require("blink-pairs").setup({
	mappings = {
		enabled = true
	}
})

require("nvim-ts-autotag").setup({
	opts = {
		enable_close = true,
		enable_rename = true,
		enable_close_on_slash = false
	}
})

require("blink-cmp").setup({
	fuzzy = {
		implementation = "lua"
	}
})

require("nvim-treesitter").setup()
vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		pcall(vim.treesitter.start)
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end
})
vim.lsp.config("tinymist", {
	settings = {
		formatterMode = "typstyle",
		semanticTokens = "disable"
	}
})
vim.lsp.config("clangd", {
	cmd = {
		'clangd',
		'--query-driver=/nix/store/*gcc-wrapper*/bin/g++'
	}
})
