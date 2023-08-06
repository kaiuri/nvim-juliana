local nvim_set_hl = vim.api.nvim_set_hl
---@param group string
---@param style table<string, any>
local highlight = function(group, style)
  nvim_set_hl(0, group, style)
end

---Missing configuration fields will be filled with the default values
---@class Juliana
local M = {
  ---@class Configuration
  config = {
    colors = require 'nvim-juliana.defaults',
  },
}

---Takes a table conforming to the Configuration interface,
---merges it with the default configuration
---@param config? Configuration
M.setup = function(config)
  if not config then return end
  M.config = vim.tbl_deep_extend('force', M.config, config)
end


local theme = require('nvim-juliana.theme')
--- Loads the theme
---@return nil
function M:load()
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end
  vim.cmd('set t_Co=256')
  vim.g.colors_name = 'juliana'
  theme(self.config.colors, highlight)
end

---@return Colors
M.colors = function()
  return M.config.colors
end

return M
