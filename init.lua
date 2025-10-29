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
		enable = true
	}
})
require("blink-cmp").setup()

