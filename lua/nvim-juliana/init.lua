local theme = require('nvim-juliana.theme')

local DEFAULT = require 'nvim-juliana.defaults'

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
---@param func? fun(theme: Colors): {[string]: table<string, any>?} # Function that returns a table of highlight<br> groups and their respective definitions
---@return nil
function M:load(func)
  func = func or theme

  if vim.g.colors_name then
    vim.cmd('hi clear')
  end
  vim.cmd('set t_Co=256')
  vim.g.colors_name = 'juliana'

  local colorscheme = func(self.config.colors)
  local nvim_set_hl = vim.api.nvim_set_hl

  for _, v in ipairs(colorscheme) do
    nvim_set_hl(0, v[1], v[2])
  end
end

---@return Colors
M.colors = function()
  return M.config.colors
end

return M
