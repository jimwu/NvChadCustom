local plugins = {
   {
      "stevearc/dressing.nvim",
      lazy = false,
   },
   {
      "tpope/vim-surround",
      lazy = false,
   },
   {
      "nvie/vim-togglemouse",
      lazy = false,
   },
   {
      "hashivim/vim-terraform",
      lazy = false,
   },
   {
      "kenn7/vim-arsync",
      lazy = false,
   },
   {
      "phpactor/phpactor",
      lazy = false,
      ft = { "php" },
      tag = "*",
      run = "composer update",
   },
   {
      "iamcco/markdown-preview.nvim",
      lazy = false,
      run = "cd app && yarn install",
      setup = function()
         vim.g.mkdp_filetypes = { "markdown" }
      end,
      ft = { "markdown" },
   },
   {
      "stephpy/vim-php-cs-fixer",
      lazy = false,
      config = function()
         vim.g.php_cs_fixer_rules = "@Symfony,@Symfony:risky' '--allow-risky=yes"
      end,
   },
   {
      "nathom/filetype.nvim",
      config = function()
         require("custom.configs.filetype").setup()
      end,
   },
   {
      "karb94/neoscroll.nvim",
      config = function()
         require("neoscroll").setup()
      end,
   },
   {
      "neovim/nvim-lspconfig",
      dependencies = {
         "jose-elias-alvarez/null-ls.nvim",
         config = function()
            require "custom.configs.null-ls"
         end,
      },
      config = function()
         require "plugins.configs.lspconfig"
         require "custom.configs.lspconfig"
      end,
   },
   {
      "nvim-treesitter/nvim-treesitter",
      opts = {
         ensure_installed = {
            "vim",
            "lua",
            "html",
            "css",
            "javascript",
            "typescript",
            "tsx",
            "json",
            "php",
            "phpdoc",
            "python",
            "ruby",
            "go",
            "yaml",
            "terraform",
            "thrift",
            "sql",
            "rust",
            "scala",
            "regex",
            "markdown",
            "markdown_inline",
            "perl",
            "jq",
            "awk",
         },
      },
   },
}

return plugins
