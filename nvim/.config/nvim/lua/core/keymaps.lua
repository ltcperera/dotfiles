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

-- Ctrl-s for saving
keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save current file' })
keymap.set('i', '<C-s>', '<ESC>:w<CR>==', { desc = 'Save current file' })

-- nvim-tree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })

-- Quit or close current buffer
keymap.set('n', 'q', ':confirm quit<CR>', { desc = 'Quit. Confirm if needed.' })

-- Move line/block of text up or down (normal, insert and visual modes) with alt or meta keys
keymap.set('n', '<M-k>', ':m .-2<CR>==', { desc = "Move line up in normal mode" })
keymap.set('n', '<M-j>', ':m .+1<CR>==', { desc = "Move line down in normal mode" })
keymap.set('i', '<M-k>', '<Esc>:m .-2<CR>==gi', { desc = "Move line up in insert mode" })
keymap.set('i', '<M-j>', '<Esc>:m .+1<CR>==gi', { desc = "Move line down in insert mode" })
keymap.set('v', '<M-k>', ":m '<-2<CR>gv=gv", { desc = "Move range up in visual mode" })
keymap.set('v', '<M-j>', ":m '>+1<CR>gv=gv", { desc = "Move range down in visual mode" })

-- Copy line up/down
keymap.set('n', '<SA-k>', 'yyp', { desc = "Copy line up" })
keymap.set('n', '<SA-j>', 'yypk', { desc = "Copy line down" })

-- Bindings for indentation
keymap.set('v', '<Tab>', '>gv', { desc = "Indent block right" })
keymap.set('v', '<S-Tab>', '<gv', { desc = "Indent block left" })
keymap.set('i', '<Tab>', '<C-t>', { desc = "Insert tab before current line left" })
keymap.set('i', '<S-Tab>', '<C-d>', { desc = "Delete tab before current line right" })

-- Bindings for source navigation
keymap.set('n', '<F12>', '<C-]>', { desc = "Goto definition" })
keymap.set('n', '<C-->', '<C-o>', { desc = "Go back" })

-- Copy from vim into clipboard
keymap.set('n', '<leader>y', '\"+y', { desc = 'Copy to system clipboard' })
keymap.set('v', '<leader>y', '\"+y', { desc = 'Copy to system clipboard' })
