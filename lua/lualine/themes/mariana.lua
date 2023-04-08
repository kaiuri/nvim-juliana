local v = require('nvim-mariana').colors()
local rest = { fg = v.fg2, bg = v.bg1 }

--- Creates a table conforming to the lualine theme specification
---@private
---@param color string
local function highlight(color)
    return {
        a = { bg = color, fg = v.bg3, gui = 'bold' },
        b = rest,
        c = rest,
    }
end

return {
    normal = highlight(v.fg1),
    insert = highlight(v.green),
    visual = highlight(v.cyan),
    replace = highlight(v.orange),
    command = highlight(v.yellow3),
    terminal = highlight(v.magenta),
    active = {
        a = { bg = v.bg2, fg = v.fg2, gui = 'bold' },
        b = rest,
        c = rest,
    },
    inactive = {
        a = { bg = v.bg1, fg = v.fg2 },
        b = rest,
        c = rest,
    },
}
