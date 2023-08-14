if vim.g.vscode then
	-- VSCode extensions
else
	-- Ordinary Neovim
	require("user.plugins-setup")
	require("user.core.options")
	require("user.core.keymaps")
	require("user.core.colorscheme")
	require("user.plugins.comment")
	require("user.plugins.nvim-tree")
	require("user.plugins.lualine")
	require("user.plugins.bufferline")
	require("user.plugins.telescope")
	require("user.plugins.diffview")
	require("user.plugins.nvim-cmp")
	require("user.plugins.lsp.mason")
	require("user.plugins.lsp.lspsaga")
	require("user.plugins.lsp.lspconfig")
	require("user.plugins.lsp.null-ls")
	require("user.plugins.treesitter")
	require("user.plugins.toggleterm")
	require("user.plugins.marks")
end
