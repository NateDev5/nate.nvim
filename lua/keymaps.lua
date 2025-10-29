vim.g.mapleader = " "

local kmap = vim.keymap.set

kmap("n", "<leader>e", ":Oil<CR>")
kmap("n", "<leader>so", ":so<CR>")
kmap("n", "<leader>wa", ":wa<CR>")

local builtin = require("telescope.builtin")

kmap("n", "<leader>ff", builtin.find_files)
kmap("n", "<leader>fg", builtin.live_grep)
kmap("n", "<leader>fh", builtin.help_tags)
kmap("n", "<leader>fk", builtin.keymaps)
kmap("n", "<leader>fo", builtin.vim_options)
