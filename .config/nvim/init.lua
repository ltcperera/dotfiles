if vim.g.vscode then
    -- VSCode extensions
else
    -- Neovim setup
    require("core.settings")
    require("nvconfig")
    require("core.keymaps")
end
