local active = '#3d4752'
local inactive = '#788797'
local bg = '#2B333B'
local fg = '#cbd3e2'
local black = '#252b32'
local red = '#ec5f66'
local green = '#99c794'
local yellow = '#fac761'
local cyan = '#5fb4b4'

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
