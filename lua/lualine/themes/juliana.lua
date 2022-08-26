-- use original juliana colors
local ok, juliana = pcall(require, 'nvim-juliana.palette')
local inactive
local bg
local fg
local red
local green
local yellow
local cyan
if not ok then
  inactive = '#788797'
  bg = '#2b333b'
  fg = '#cbd3e2'
  red = '#ec5f66'
  green = '#99c794'
  yellow = '#fac761'
  cyan = '#5fb4b4'
else
  inactive = juliana.blue6
  bg = '#2b333b'
  fg = juliana.white3
  red = juliana.red
  green = juliana.green
  yellow = juliana.orange
  cyan = juliana.blue5
end

return {
  normal = {
    a = { bg = bg, fg = fg, gui = 'bold' },
    b = { bg = bg, fg = fg },
    c = { bg = bg, fg = fg },
  },
  insert = {
    a = { bg = bg, fg = green, gui = 'bold' },
    b = { bg = bg, fg = fg },
    c = { bg = bg, fg = fg },
  },
  visual = {
    a = { bg = bg, fg = cyan, gui = 'bold' },
    b = { bg = bg, fg = fg },
    c = { bg = bg, fg = fg },
  },
  replace = {
    a = { bg = bg, fg = red, gui = 'bold' },
    b = { bg = bg, fg = fg },
    c = { bg = bg, fg = fg },
  },
  command = {
    a = { bg = bg, fg = yellow, gui = 'bold' },
    b = { bg = bg, fg = fg },
    c = { bg = bg, fg = fg },
  },
  inactive = {
    a = { bg = bg, fg = inactive, gui = 'bold' },
    b = { bg = bg, fg = fg },
    c = { bg = bg, fg = fg },
  },
}
-- require('lualine').setup {options = {theme = mariana}}
