-- Setup lazy.nvim as the package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install and configure our plugins
require('lazy').setup({

    { import = 'plugins.colorscheme' },
    -- { import = 'plugins.lsp.mason' },
    { import = 'plugins.lsp.lspconfig' },
    { import = 'plugins.lsp.lspsaga' },

    -- Configure VSCode like icons for Autocompletion
    { import = 'plugins.lspkind' },

    -- Autocomplete
    { import = 'plugins.nvim-cmp' },
  
    { import = 'plugins.lualine' },
    { import = 'plugins.indent' },
    { import = 'plugins.comment' },
    { import = 'plugins.telescope' },
    { import = 'plugins.treesitter' },

}, {})