-- Keymaps for better default experience
local keymap = vim.keymap

-- See `:help vim.keymap.set()`
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- General Keymaps
keymap.set("i", "jk", "<ESC>") -- Use jk in insert mode to exit insert mode
keymap.set("n", "<F3>", ":nohl<CR>") -- Remove highlight

keymap.set("n", "<leader>\\", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>-", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>=", "<C-w>=") -- make split windows equal width
-- keymap.set("n", "<leader>w", ":Bwipeout<CR>") -- close current split window

-- Ctrl-s for saving
keymap.set("n", "<C-s>", ":w<CR>") -- Save current file
keymap.set("i", "<C-s>", "<ESC>:w<CR>") -- Save current file

-- Quit
keymap.set("n", "q", ":confirm quit<CR>")

