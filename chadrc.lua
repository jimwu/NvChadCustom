local M = {}


M.ui = {
   theme = "tokyodark",
}


M.plugins = {
   user = require "custom.plugins",
   override = {
      ["nvim_treesitter"] = {
         highlight = {
            enable = true,
            additional_vim_regex_highlighting = true,
         },
         indent = {
            enable = false,
         },
      },
   },
}

M.options = {
   user = function()
      vim.cmd ":set noswapfile"
      vim.cmd ":set iskeyword+=_"
      vim.opt.autoindent = true
   end,
}

M.mappings = require "custom.mappings"

return M
