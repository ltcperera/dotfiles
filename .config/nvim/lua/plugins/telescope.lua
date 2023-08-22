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

            -- Find files within current working directory, respects .gitignore
            keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })

            -- Find word in current working directory
            keymap.set('n', '<leader>fs', builtin.grep_string, { desc = '[F]ind [S]tring' })

            -- Find string in current directory as you type
            keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[S]earch by [G]rep' })

            -- List currently open buffers
            keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'List open buffers' })

            -- Search diagnostics
            keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })

            -- Search gitfiles
            keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })

            -- Search help
            keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
        end
    }
}
