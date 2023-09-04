return {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local nvim_tree = require("nvim-tree")

        -- Recommended settings from nvim-tree documentation
        vim.g.loaded = 1
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        local function on_attach(bufnr)
            local api = require("nvim-tree.api")

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- Default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- Custom mappings
            vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
            vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
            vim.keymap.set("n", "H", api.tree.collapse_all, opts("Collapse"))
        end

        nvim_tree.setup({
            on_attach = on_attach,
            view = {
                width = 30,
            },
          	-- change folder arrow icons
            renderer = {
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "", -- arrow when folder is closed
                            arrow_open = "", -- arrow when folder is open                        },
                        }
                    },
                },
            },
            actions = {
                open_file = {
                    quit_on_open = false,
                    window_picker = {
                        enable = false,
                    },
                },
            },
        })
    end,
}
