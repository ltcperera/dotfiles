return {
    -- Highlight, edit, and navigate code
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        config = function() 
            local treesitter = require("nvim-treesitter.configs")

            treesitter.setup({
                -- enable syntax highlighting
                highlight = {
                    enable = true,
                },
                -- enable autotagging (w/ nvim-ts-autotag plugin)
                autotag = { enable = true },
                -- ensure these language parsers are installed
                ensure_installed = {
                    "json",
                    "javascript",
                    "typescript",
                    "tsx",
                    "yaml",
                    "html",
                    "css",
                    "markdown",
                    "svelte",
                    "graphql",
                    "bash",
                    "lua",
                    "vim",
                    "dockerfile",
                    "gitignore",
                    "c",
                    "cpp",
                    "go",
                    "rust",
                    "python",
                },
                -- auto install above language parsers
                auto_install = true,
            })
        end,
        build = ':TSUpdate',
    },
}
