local M = {}

M.ui = {
  theme = "tokyodark",
  telescope = { style = "bordered" }, -- borderless / bordered
  nvdash = {
    load_on_startup = false,
  }
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
