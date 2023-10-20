return {
    'nvimdev/lspsaga.nvim',
    config = function()
        require('lspsaga').setup({
            -- Keybinds for navigation in lspsaga window
            scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
            -- Use enter to open file with definition preview
            definition = {
                edit = "<CR>",
            },
            symbol_in_winbar = {
                enable = false,
            }
        })
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons'     -- optional
    }
}
