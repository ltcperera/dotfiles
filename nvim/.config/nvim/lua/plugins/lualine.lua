return {
    -- Set lualine as statusline
    {
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        config = function()
            local lualine = require("lualine")

            lualine.setup({})
        end
    },
}
