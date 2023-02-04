local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

-- Use a protected call so there is no error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

-- Install plugins here
return packer.startup(function(use)

	use "wbthomason/packer.nvim" -- Have packer manage itself
	use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
	use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
	use "nvim-telescope/telescope.nvim" -- Fuzzy finder
	use "lewis6991/gitsigns.nvim" -- git shortcuts
	use "vim-airline/vim-airline" -- Pretty status bar
	use "AckslD/nvim-neoclip.lua" -- Vim history
	use "akinsho/toggleterm.nvim" -- Terminal in vim
	use "octol/vim-cpp-enhanced-highlight" -- Cpp colored syntax
	use "jiangmiao/auto-pairs"
	use "ryanoasis/vim-devicons"

	-- Themes
	use 'ghifarit53/tokyonight-vim'
	use 'vim-airline/vim-airline-themes'

	-- cmp plugins
	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
	use "hrsh7th/cmp-cmdline" -- cmdline completions
	use "saadparwaiz1/cmp_luasnip" -- snippet completions
	use "hrsh7th/cmp-nvim-lsp"
	use "preservim/nerdtree"

	-- debug with dap
	use "mfussenegger/nvim-dap"
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

	-- snippets
	use "L3MON4D3/LuaSnip" --snippet engine
	use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

	-- LSP
	use "neovim/nvim-lspconfig" -- enable LSP
	use "williamboman/mason.nvim" -- simple to use language server installer
	use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
	use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics and code actions
	use 'williamboman/nvim-lsp-installer'
	use 'onsails/lspkind.nvim'

	-- Treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		commit = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac",
	}

	-- Automatically set up configuration after cloning packer.nvim
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
