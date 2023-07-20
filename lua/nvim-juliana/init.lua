local DEFAULT = require 'nvim-juliana.defaults'
local theme = require('nvim-juliana.theme')

local nvim_set_hl = vim.api.nvim_set_hl
---@param group string
---@param style table<string, any>
local highlight = function(group, style)
  nvim_set_hl(0, group, style)
end

---@class Juliana
local M = setmetatable({ config = DEFAULT }, {})

---Takes a table conforming to the Configuration interface,
---merges it with the default configuration
---@param config? Configuration
M.setup = function(config)
  if not config then return end
  M.config = vim.tbl_deep_extend('force', DEFAULT, config)
end

--- Loads the theme
---@return nil
function M:load()
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end
  vim.cmd('set t_Co=256')
  vim.g.colors_name = 'juliana'
  local colorscheme = theme(self.config.colors, highlight)
end

---@return Colors
M.colors = function()
  return M.config.colors
end

return M
