return {
    -- Fuzzy Finder (files, lsp, etc)
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- Fuzzy Finder Algorithm which requires local dependencies to be built.
            -- Only load if `make` is available. Make sure you have the system
            -- requirements installed.
            {
              'nvim-telescope/telescope-fzf-native.nvim',
              -- NOTE: If you are having trouble with this installation,
              --       refer to the README for telescope-fzf-native for more instructions.
              build = 'make',
              cond = function()
                return vim.fn.executable 'make' == 1
              end,
            },
        },
        keys = {
            -- Plugin will lazy load on these key mappings
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        },
        config = function()
            local telescope = require("telescope");
            local actions = require("telescope.actions");
            telescope.setup({
                -- Configure custom mappings used within plugin
                defaults = {
                    mappings = {
                        i = {
                            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                            ["<C-j>"] = actions.move_selection_next, -- move to next result
                            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
                        }
                    }
                }
            })
        end
    }
}
