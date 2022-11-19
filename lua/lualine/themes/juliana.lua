local v = {
    Background = {
        default  = '#303841',
        emphasis = '#2e353e',
        muted    = '#3b454e'
    },
    Colors = {
        Accent    = '#95b2d6',
        Caution   = '#f9ae58',
        Danger    = '#f97b58',
        Error     = '#ec5f66',
        Hint      = '#5fb4b4',
        Important = '#fac761',
        Info      = '#99c794',
        Note      = '#5c99d6',
        Trace     = '#cc8ec6',
        Warn      = '#ee932b'
    },
    Foreground = {
        default  = '#d8dee9',
        emphasis = '#f7f7f7',
        muted    = '#a6acb8',
        surface  = '#46525c'
    },
    Shade = {
        default  = '#2f373f',
        emphasis = '#2e363e'
    }
}
local fg = v.Foreground.default
local bg = v.Background.muted

return {
    normal = {
        a = { bg = v.Background.default, fg = v.Foreground.emphasis, gui = 'bold' },
        b = { bg = bg, fg = fg },
        c = { bg = bg, fg = fg },
    },
    insert = {
        a = { bg = v.Colors.Info, fg = v.Background.emphasis, gui = 'bold' },
        b = { bg = bg, fg = fg },
        c = { bg = bg, fg = fg },
    },
    visual = {
        a = { bg = v.Colors.Hint, fg = v.Background.emphasis, gui = 'bold' },
        b = { bg = bg, fg = fg },
        c = { bg = bg, fg = fg },
    },
    replace = {
        a = { bg = v.Colors.Danger, fg = v.Background.emphasis, gui = 'bold' },
        b = { bg = bg, fg = fg },
        c = { bg = bg, fg = fg },
    },
    command = {
        a = { bg = v.Colors.Warn, fg = v.Background.emphasis, gui = 'bold' },
        b = { bg = bg, fg = fg },
        c = { bg = bg, fg = fg },
    },
    terminal = {
        a = { bg = v.Colors.Trace, fg = v.Background.emphasis, gui = 'bold' },
        b = { bg = bg, fg = fg },
        c = { bg = bg, fg = fg },
    },
    inactive = {
        a = { bg = v.Background.muted, fg = v.Foreground.default },
        b = { bg = bg, fg = fg },
        c = { bg = bg, fg = fg },
    },
}
