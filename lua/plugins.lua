return {
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		opts = function()
			local opts = require("nvchad.configs.cmp")
			opts.sources = {
				{ name = "nvim_lsp" },
				-- { name = "luasnip" },
				{ name = "buffer" },
				{ name = "nvim_lua" },
				{ name = "path" },
			}
			return opts
		end,
	},
	{
		"github/copilot.vim",
		lazy = false,
		config = function() -- Mapping tab is already used by NvChad
			require("configs.copilot")
		end,
	},
	{
		"hashivim/vim-terraform",
		lazy = false,
	},
	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		config = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			require("configs.ibl-background")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("configs.null-ls")
			end,
		},
		config = function()
			require("configs.lspconfig")
		end,
	},
	{
		"nvie/vim-togglemouse",
		lazy = false,
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			view = {
				width = 60,
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"lua",
				"html",
				"css",
				"javascript",
				"json",
				"php",
				"phpdoc",
				"yaml",
				"terraform",
				"sql",
				"regex",
				"markdown",
				"markdown_inline",
				"jq",
				"awk",
			},
		},
	},
	{
		"phpactor/phpactor",
		tag = "2024.03.09.0",
		ft = "php",
		build = "composer update --no-dev -o",
	},
	{
		"stephpy/vim-php-cs-fixer",
		ft = "php",
		config = function()
			vim.g.php_cs_fixer_rules =
				"@Symfony,@Symfony:risky,-native_function_invocation,-native_constant_invocation,-concat_space,-yoda_style' '--allow-risky=yes"
		end,
	},
	{
		"stevearc/dressing.nvim",
		lazy = false,
	},
	{
		"tpope/vim-surround",
		lazy = false,
	},
	{
		"vim-test/vim-test",
		cmd = {
			"TestNearest",
			"TestFile",
			"TestSuite",
			"TestLast",
			"TestVisit",
		},
	},
}
