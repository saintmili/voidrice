local keymap = vim.keymap

vim.g.mapleader = " "

-- open netrw
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Stay in current positon after merging lines
keymap.set("n", "J", "mzJ`z")

-- source current
keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)

