require("options")

vim.pack.add({
	"https://github.com/vague-theme/vague.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/nvim-telescope/telescope.nvim",
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/neovim/nvim-lspconfig"

})

require("keymaps");

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
	}
})
require("lualine").setup()
require("mason").setup()
require("commands")

