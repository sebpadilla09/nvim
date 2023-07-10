vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({
		"nvim-treesitter/nvim-treesitter",
		requires = { { "nvim-treesitter/nvim-treesitter-textobjects" } },
		run = ":TSUpdate",
	})
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional
			-- Formatting
			{ "jose-elias-alvarez/null-ls.nvim" },
			{ "jay-babu/mason-null-ls.nvim" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		-- Add indentation guides even on blank lines
		"lukas-reineke/indent-blankline.nvim",
		opts = {
			char = "|",
			show_trailing_blankline_indent = false,
		},
	})
	use({
		-- Set lualine as statusline
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		-- See `:help lualine.txt`
		opts = {
			options = {
				icons_enabled = false,
				theme = "catppuccin",
				component_separators = "|",
				section_separators = "",
			},
		},
	})
	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
		},
	})
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
	})
	use({
		"rmagatti/goto-preview",
	})
	use({
		"folke/todo-comments.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use("github/copilot.vim")
end)
