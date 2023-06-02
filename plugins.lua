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
      ft = "php",
      build = "composer update --no-dev -o",
   },
   {
      "iamcco/markdown-preview.nvim",
      ft = "markdown",
      config = function()
         vim.fn["mkdp#util#install"]()
      end,
   },
   {
      "stephpy/vim-php-cs-fixer",
      ft = "php",
      config = function()
         vim.g.php_cs_fixer_rules = "@Symfony,@Symfony:risky,-native_function_invocation,-native_constant_invocation,-concat_space,-yoda_style' '--allow-risky=yes"
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

return plugins
