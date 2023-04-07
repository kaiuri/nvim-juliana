local theme = require('nvim-juliana.theme')

--- Default configuration
---@class Configuration
local DEFAULT = {
  ---@class Colors
  colors = {
    bg1 = '#3b454e',
    bg2 = '#303841',
    bg3 = '#2e353e',
    fg1 = '#ffffff',
    fg2 = '#d8dee9',
    fg3 = '#a6acb8',
    fg4 = '#46525c',
    shade1 = '#2f373f',
    shade2 = '#2e363e',
    blue1 = '#95b2d6',
    blue2 = '#5c99d6',
    cyan = '#5fb4b4',
    green = '#99c794',
    magenta = '#cc8ec6',
    orange = '#f97b58',
    red = '#ec5f66',
    yellow1 = '#fac761',
    yellow2 = '#f9ae58',
    yellow3 = '#ee932b',
  },
}

--- Main module
---@class Juliana
local M = setmetatable({
  config = DEFAULT,
}, {})

--- Takes a table conforming to the Configuration interface and merges it with
-- the default configuration
---@param config? Configuration
function M:setup(config)
  if not config then return end
  self.config = vim.tbl_deep_extend('force', DEFAULT, config)
end

--- Loads the theme
---@param func fun(theme: Colors): {[string]: table<string, any>?} # Function that returns a table of highlight<br> groups and their respective definitions
---@return nil
function M:load(func)
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end
  vim.cmd('set t_Co=256')
  vim.g.colors_name = 'juliana'

  local colorscheme = func(self.config.colors)
  local nvim_set_hl = vim.api.nvim_set_hl
  for group_name, definition in pairs(colorscheme) do
    nvim_set_hl(0, group_name, definition)
  end
end

function M:get_colors()
  return self.config.colors
end

return {
  --- loads the colorscheme
  ---@return nil
  load = function()
    M:load(theme)
  end,
  colors = function()
    return M:get_colors()
  end,
  ---@param config Configuration
  setup = function(config)
    M:setup(config)
  end,
}
