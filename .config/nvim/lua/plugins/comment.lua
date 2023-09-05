return {
    -- "gc" to comment visual regions/lines
    {
        'numToStr/Comment.nvim', opts = {},
         config = function()
            require('Comment').setup()
            local api = require('Comment.api')
            vim.keymap.set('n', "<C-/>", api.toggle.linewise.current, { desc = 'Comment line with Ctrl + /' }) -- comment line with Ctrl + /
         end
    }
}
