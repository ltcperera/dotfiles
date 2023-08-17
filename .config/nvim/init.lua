if vim.g.vscode then
    -- VSCode extensions
else
    -- Neovim setup
    require("core.settings")
    require("core.keymaps")
    require("nvconfig")
end
