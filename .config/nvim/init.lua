if vim.g.vscode then
    -- VSCode extensions
else
    -- Neovim setup
    require("core.settings")
    require("plugin-setup")
    require("core.keymaps")
end
