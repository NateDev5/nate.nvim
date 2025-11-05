vim.g.mapleader = " "

local kmap = vim.keymap.set

kmap("n", "<leader>e", ":Oil<CR>", { silent = true })
-- kmap("n", "<leader>so", ":so<CR>")
kmap("n", "<leader>wa", ":wa<CR>")

kmap("n", "<leader>d", vim.diagnostic.open_float)

kmap("n", "<leader>fb", vim.lsp.buf.format)

kmap("n", "<leader>s", ":LspClangdSwitchSourceHeader<CR>", { noremap = true, silent = true })

local builtin = require("telescope.builtin")

kmap("n", "<leader>ff", builtin.find_files)
kmap("n", "<leader>fg", builtin.live_grep)
kmap("n", "<leader>fh", builtin.help_tags)
kmap("n", "<leader>fk", builtin.keymaps)
kmap("n", "<leader>fo", builtin.vim_options)
