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
        config = function()
            local telescope = require("telescope")
            local actions = require("telescope.actions")
            local builtin = require("telescope.builtin")
            local keymap = vim.keymap

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

            keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })
            keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[S]earch [F]iles' })
            keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
            keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
            keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
            keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
        end
    }
}