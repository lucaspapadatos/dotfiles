
vim.g.mapleader = " "

-- go to netrw directory
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 

-- move highlighted up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- center cursor
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste replace
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete to void
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- replace highlighted
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")



-- plugin remaps in ../../after/plugin/* commented here for convenience
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- HARPOON
-- add file -> vim.keymap.set("n", "<leader>a", mark.add_file)
-- toggle menu -> vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
-- nav file 1 -> vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
-- nav file 2 -> vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
-- nav file 3 -> vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
-- nav file 4 -> vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

-- TELESCOPE
-- find files -> vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- find files w/ grep -> vim.keymap.set('n', '<leader>ps', function() builtin.grep_string({ search = vim.fn.input("Grep > ") })

-- UNDO TREE
-- toggle tree -> vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
