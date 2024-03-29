return {
  {
    "github/copilot.vim",
    lazy = false,
    config = function()  -- Mapping tab is already used by NvChad
      require "configs.copilot"
    end
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
    "kenn7/vim-arsync",
    lazy = false,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    version = "3",
    main = "ibl",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "configs.null-ls"
      end,
    },
    config = function()
      require "configs.lspconfig"
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
      }
    },
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
    indent = {
      enable = true
    }
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
      vim.g.php_cs_fixer_rules = "@Symfony,@Symfony:risky,-native_function_invocation,-native_constant_invocation,-concat_space,-yoda_style' '--allow-risky=yes"
    end,
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    config = function()
      require "configs.conform"
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
