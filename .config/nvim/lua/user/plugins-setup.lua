-- Auto Install Packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- Autocommand to reload neovim and installs/updates/remove plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- Import packer safely
local status, packer = pcall(require, "packer")
if not status then
	print("Could not import packer!")
	return
end

-- Add list of plugins to be installed
return packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- lua functions that many plugins use
	use("nvim-lua/plenary.nvim")

	-- preferred colorscheme
	use("bluz71/vim-nightfly-guicolors")

	-- tmux & split window navigation
	use("christoomey/vim-tmux-navigator")

	-- Maximize and restore current window
	use("szw/vim-maximizer")

	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- vs-code like icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- Toggleterm
	use("akinsho/toggleterm.nvim")

	-- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	-- Bufferline plugin emulates tabs in other editors
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })
	use("moll/vim-bbye")

	-- Manage and setup LSP servers, linters and tools
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	-- Autocomplete
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- Snippets
	use("L3MON4D3/LuaSnip") -- Snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- Formatting & Linting
	use({
		"jose-elias-alvarez/null-ls.nvim", -- Configure formatters and Linters
		"jayp0521/mason-null-ls.nvim", -- Bridge gap b/w/ mason & null-ls
	})

	-- additional functionality for typescript server (e.g. rename file & update imports)
	use("jose-elias-alvarez/typescript.nvim")
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp UIs
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- Add diffview for git diff
	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })

	-- Add bookmarks support
	use("chentoast/marks.nvim")

	-- Add vim-clang-format support
	use("rhysd/vim-clang-format")

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
end)
