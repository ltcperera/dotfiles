return {
    -- Add bufferline support
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            local keymap = vim.keymap
            require("bufferline").setup()

            -- Bufferline mappings
            keymap.set("n", "<A-,>", "<cmd>BufferLineCyclePrev<cr>")
            keymap.set("n", "<A-.>", "<cmd>BufferLineCycleNext<cr>")
            keymap.set("n", "<A-1>", "<cmd>lua require('bufferline').go_to_buffer(1, true)<cr>")
            keymap.set("n", "<A-2>", "<cmd>lua require('bufferline').go_to_buffer(2, true)<cr>")
            keymap.set("n", "<A-3>", "<cmd>lua require('bufferline').go_to_buffer(3, true)<cr>")
            keymap.set("n", "<A-4>", "<cmd>lua require('bufferline').go_to_buffer(4, true)<cr>")
            keymap.set("n", "<A-5>", "<cmd>lua require('bufferline').go_to_buffer(5, true)<cr>")
            keymap.set("n", "<A-6>", "<cmd>lua require('bufferline').go_to_buffer(6, true)<cr>")
            keymap.set("n", "<A-7>", "<cmd>lua require('bufferline').go_to_buffer(7, true)<cr>")
            keymap.set("n", "<A-8>", "<cmd>lua require('bufferline').go_to_buffer(8, true)<cr>")
            keymap.set("n", "<A-9>", "<cmd>lua require('bufferline').go_to_buffer(9, true)<cr>")
        end
    },
}
