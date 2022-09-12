-- use original juliana colors
local ok, colors = pcall(require, 'nvim-juliana.colors')
if not ok then
    print(('%s'):format(colors))
    return
end

local active_fg = colors.white
local active_bg = colors.blue2


return {
    normal = {
        a = { bg = colors.blue3, fg = colors.white, gui = 'bold' },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
    insert = {
        a = { bg = colors.green, fg = colors.black, gui = 'bold' },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
    visual = {
        a = { bg = colors.blue5, fg = colors.black, gui = 'bold' },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
    replace = {
        a = { bg = colors.red, fg = colors.black, gui = 'bold' },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
    command = {
        a = { bg = colors.orange3, fg = colors.black, gui = 'bold' },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
    inactive = {
        a = { bg = colors.blue2, fg = colors.white3 },
        b = { bg = active_bg, fg = active_fg },
        c = { bg = active_bg, fg = active_fg },
    },
}
-- require('lualine').setup {options = {theme = mariana}}
