local palette = require 'nvim-juliana.palette'
local colors = palette.colors
local active_fg = colors.gray7
local active_bg = colors.gray5
return {
    normal = {
        a = { bg = colors.gray4, fg = colors.gray9 --[[ , gui = "bold" ]] },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
    insert = {
        a = { bg = colors.green, fg = colors.gray1, gui = 'bold' },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
    visual = {
        a = { bg = colors.cyan, fg = colors.gray1, gui = 'bold' },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
    replace = {
        a = { bg = colors.red, fg = colors.gray1, gui = 'bold' },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
    command = {
        a = { bg = colors.yellow, fg = colors.gray1, gui = 'bold' },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
    terminal = {
        a = { bg = colors.pink, fg = colors.gray1, gui = 'bold' },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
    inactive = {
        a = { bg = colors.gray5, fg = colors.gray7 },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
}
