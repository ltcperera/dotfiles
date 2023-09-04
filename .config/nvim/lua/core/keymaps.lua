-- Keymaps for better default experience
local keymap = vim.keymap

-- See `:help vim.keymap.set()`
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- General Keymaps
keymap.set('i', 'jk', "<ESC>") -- Use jk in insert mode to exit insert mode
keymap.set('n', '<F3>', ":nohl<CR>") -- Remove highlight

keymap.set('n', '<leader>\\', '<C-w>v', { desc = 'Split window vertically' })
keymap.set('n', '<leader>-', '<C-w>s', { desc = 'Split window horizontally' })
keymap.set('n', '<leader>=', '<C-w>=', { desc = 'Make split windows equal width' })
-- Temporarily commenting out
-- keymap.set("n", "<leader>w", ":Bwipeout<CR>") -- close current split window

-- Ctrl-s for saving
keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save current file' })
keymap.set('i', '<C-s>', '<ESC>:w<CR>==gi', { desc = 'Save current file' })

-- nvim-tree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })

-- Quit or close current buffer
keymap.set('n', 'q', ':confirm quit<CR>', { desc = 'Quit. Confirm if needed.' })

-- Move line/block of text up or down (normal, insert and visual modes)
keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = "Move line up in normal mode" })
keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = "Move line down in normal mode" })
keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { desc = "Move line up in insert mode" })
keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { desc = "Move line down in insert mode" })
keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = "Move range up in visual mode" })
keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = "Move range down in visual mode" })

-- Copy line up/down
keymap.set('n', '<SA-k>', 'yyp', { desc = "Copy line up" })
keymap.set('n', '<SA-j>', 'yypk', { desc = "Copy line down" })
