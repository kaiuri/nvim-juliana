--# selene: allow(unscoped_variables)
--# selene: allow(undefined_variable)

local M = {}

local highlights = {

    Normal = { fg = '#CBD3E2', bg = '#2B333B' },
    Character = { fg = '#93CF8C' },
    String = { link = 'Character' },

    CmpItemAbbrDeprecated = { strikethrough = true },
    CmpItemKindClass = { fg = '#EF5D64' },
    CmpItemKindEnum = { link = 'CmpItemKindClass' },
    CmpItemKindInterface = { link = 'CmpItemKindClass' },
    CmpItemKindMethod = { fg = '#8EB8E1' },
    CmpItemKindUnit = { link = 'CmpItemKindValue' },

    ColorColumn = { fg = '#CBD3E2', bg = '#2B333B' },
    Comment = { fg = '#788797', italic = true },
    Conceal = { fg = '#5A6B8C' },
    Conditional = { fg = '#c695C6' },
    Constant = { fg = '#C695C6' },
    Boolean = { link = 'Constant' },
    CursorColumn = { link = 'CursorLine' },
    Delimiter = { fg = '#5E99D4' },
    TSPunctDelimiter = { link = 'Delimiter' },

    DiffAdd = { sp = '#93CF8C', underdotted = true },
    DiffChange = { sp = '#EF5D64', underdotted = true },
    DiffDelete = { fg = '#788797' },
    DiffText = { italic = true },
    Directory = { underdotted = true },
    EndOfBuffer = { fg = '#2B333B' },
    Error = { fg = '#FA7A57' },
    ErrorMsg = { fg = '#EF5D64' },
    WarningMsg = { link = 'ErrorMsg' },
    Exception = { fg = '#C695C6' },
    FoldColumn = { fg = '#CBD3E2', bg = '#2B333B' },
    Folded = { sp = '#647382', underdashed = true },
    Function = { fg = '#5E99D4' },
    CmpItemKindFunction = { link = 'Function' },
    TSMethod = { link = 'Function' },
    Identifier = { fg = '#CBD3E2', bg = '#2B333B' },
    Include = { fg = '#7999B9' },
    PreCondit = { link = 'Include' },
    Keyword = { fg = '#C695C6' },
    Label = { fg = '#C695C6' },
    CursorLineNr = { link = 'LineNr' },
    LineNrAbove = { fg = '#A6ACB9' },
    LineNrBelow = { fg = '#A6ACB9' },
    Macro = { fg = '#8DADE7' },
    Define = { link = 'Macro' },
    MatchParen = { bg = '#3D4752' },
    ModeMsg = { fg = '#DEE1E8' },
    MoreMsg = { fg = '#DEE1E8', bold = true },
    Question = { link = 'MoreMsg' },
    NonText = { fg = '#5A6B8C' },
    NormalFloat = { bg = '#272E35' },
    Pmenu = { link = 'NormalFloat' },
    Number = { fg = '#FAAE57' },

    CmpItemKindValue = { link = 'Number' },

    Float = { link = 'Number' },
    NvimTreePopup = { fg = '#CBD3E2', bg = '#272E35' },
    Operator = { fg = '#FA7A57' },
    TSOperator = { link = 'Operator' },
    WildMenu = { link = 'Pmenu' },
    PmenuSbar = { fg = '#CBD3E2', bg = '#2B333B' },
    PmenuSel = { bg = '#272E35', bold = true },
    PmenuThumb = { bg = '#58657E' },
    PreProc = { fg = '#A7B4CD' },
    Repeat = { fg = '#C695C6' },
    Search = { fg = '#FFFFFF', bg = '#3D4752', bold = true },
    IncSearch = { link = 'Search' },
    Sneak = { link = 'Search' },
    SneakLabel = { link = 'Search' },
    SignColumn = { fg = '#CBD3E2', bg = '#2B333B' },
    Special = { fg = '#5FB4B4' },
    SpecialChar = { fg = '#5FB485' },
    SpecialComment = { fg = '#788797', underline = true },
    SpecialKey = { fg = '#48CBCB' },
    SpellBad = { sp = '#EF5D64', undercurl = true },
    SpellCap = { sp = '#FAAE57', undercurl = true },
    SpellLocal = { sp = '#48CBCB', undercurl = true },
    SpellRare = { sp = '#C695C6', undercurl = true },
    Statement = { fg = '#C695C6' },
    StatusLine = { fg = '#CBD3E2', bg = '#3D4752' },
    StatusLineNC = { fg = '#CBD3E2', bg = '#2B333B' },
    StorageClass = { fg = '#EF5D64' },
    Structure = { fg = '#C695C6' },
    CmpItemKindStruct = { link = 'Structure' },
    Typedef = { link = 'Structure' },
    TSConstBuiltin = { fg = '#EF5D64', italic = true },
    TSConstMacro = { fg = '#C695C6', italic = true },
    TSConstant = { fg = '#C695C6' },
    CmpItemKindConstant = { link = 'TSConstant' },
    TSDanger = { fg = '#EF5D64', bold = true },
    TSEmphasis = { italic = true },
    TSError = { fg = '#CBD3E2' },
    TSField = { fg = '#C695C6' },
    CmpItemKindField = { link = 'TSField' },
    TSFuncMacro = { fg = '#5E99D4', italic = true },
    TSFunction = { fg = '#5E99D4' },
    TSInclude = { fg = '#C695C6' },
    CmpItemKindModule = { link = 'TSInclude' },
    TSKeyword = { fg = '#C695C6', italic = true },
    CmpItemKindKeyword = { link = 'TSKeyword' },
    TSKeywordFunction = { fg = '#C695C6', italic = true },
    TSKeywordOperator = { fg = '#C695C6' },
    TSKeywordReturn = { fg = '#C695C6' },
    TSLabel = { fg = '#84C2BB' },
    CmpItemKindEnumMember = { link = 'TSLabel' },
    CmpItemKindProperty = { link = 'TSLabel' },
    tomlTSProperty = { link = 'TSLabel' },
    yamlTSField = { link = 'TSLabel' },
    TSNote = { fg = '#93CF8C', bold = true },
    CmpItemKindOperator = { link = 'TSOperator' },
    TSParameter = { fg = '#FAAE57' },
    TSPunctBracket = { fg = '#CBD3E2' },
    TSPunctSpecial = { fg = '#5EBBD4' },
    TSStringEscape = { fg = '#8CC0CF' },
    TSStringRegex = { fg = '#8CC0CF' },
    TSStrong = { bold = true },
    TSSymbol = { fg = '#7EBFC4' },
    CmpItemKindReference = { link = 'TSSymbol' },
    TSText = { fg = '#CBD3E2' },
    CmpItemKindSnippet = { link = 'TSText' },
    TSTextReference = { fg = '#CBD3E2', underdotted = true },
    TSTitle = { fg = '#CBD3E2', bold = true },
    TSType = { fg = '#C695C6', italic = true },
    CmpItemKindTypeParameter = { link = 'TSType' },

    TSTypeBuiltin = { fg = '#5E99D4', italic = true },

    TSURI = { fg = '#5FB4B4', underdotted = true },
    TSUnderline = { underline = true },
    TSVariable = { fg = '#CBD3E2' },
    CmpItemKindVariable = { link = 'TSVariable' },
    TSNamespace = { link = 'TSVariable' },
    TSProperty = { link = 'TSVariable' },
    TSVariableBuiltin = { fg = '#EF5D64', italic = true },
    TSWarning = { fg = '#FAAE57', bold = true },
    TabLine = { fg = '#CBD3E2', bg = '#2B333B' },
    TabLineFill = { fg = '#CBD3E2', bg = '#2B333B' },
    TabLineSel = { fg = '#CBD3E2', bg = '#2B333B' },
    Tag = { fg = '#EF5D64' },
    Title = { fg = '#C695C6' },
    Todo = { fg = '#5E99D4', bold = true },
    Type = { fg = '#C695C6', italic = true },
    Underlined = { underdotted = true },
    VertSplit = { fg = '#4E5A65' },
    Visual = { bg = '#3D4752' },
    CursorLine = { link = 'Visual' },
    LineNr = { link = 'Visual' },
    Substitute = { link = 'Visual' },
    Whitespace = { fg = '#5C75A3' },
    Winseparator = { fg = '#4E5A65' },
    commentTSConstant = { fg = '#8C99A6' },

    -- GIT

    gitCommitSelectedFile = { italic = true },
    gitCommitSummary = { bold = true },
    gitCommitTrailerToken = { fg = '#C695C6', italic = true },

    healthHelp = { fg = '#FBC760' },
    healthSuccess = { fg = '#93CF8C' },

    -- HTML

    htmlTSOperator = { fg = '#A6ACB9' },
    htmlTSTag = { fg = '#EF5D64' },
    htmlTSTagAttribute = { fg = '#C695C6' },
    htmlTSTagDelimiter = { fg = '#5FB4B4' },

    -- Lua

    luaTSField = { fg = '#95B2D6' },

    -- Markdown

    markdownTSPunctSpecial = { fg = '#EF7A5D', bold = true },
    qfFileName = { fg = '#5FB4B4' },
    qfLineNr = { bold = true },

    -- Rainbow Parentheses

    rainbowcol1 = { fg = '#FEDB95' },
    rainbowcol2 = { fg = '#A3FE95' },
    rainbowcol3 = { fg = '#95F7FE' },
    rainbowcol4 = { fg = '#B195FE' },
    rainbowcol5 = { fg = '#FE95CD' },
    rainbowcol6 = { fg = '#FEDB95' },
    rainbowcol7 = { fg = '#A3FE95' },

    -- RUST

    rustTSConstBuiltin = { fg = '#5E99D4', italic = true },
    rustTSConstant = { fg = '#5E99D4' },
    rustTSField = { fg = '#CBD3E2' },
    rustTSFuncMacro = { fg = '#5E99D4' },
    rustTSFunction = { fg = '#5FB4B4' },
    rustTSKeyword = { fg = '#C992C9' },
    rustTSOperator = { fg = '#FA7A57' },
    rustTSPunctBracket = { fg = '#CBD3E2' },
    rustTSPunctDelimiter = { fg = '#A6ACB9' },
    rustTSType = { fg = '#FAAE57' },
    rustTSTypeBuiltin = { fg = '#C695C6', italic = true },

    -- Golang

    goTSKeyword = { fg = '#EF5D64' },
    goTSType = { fg = '#5FB4B4' },
    goTSFunction = { link = 'TSFunction' },
    goTSNamespace = { fg = '#95B2D6' },

    -- TMUX

    tmuxCommands = { fg = '#C695C6' },
    tmuxFlags = { fg = '#FAAE57' },
    tmuxFormatString = { fg = '#5FB4B4' },

    -- Typescript

    typescriptTSKeyword = { fg = '#EF5D64' },
    typescriptTSType = { fg = '#5FB4B4' },

    --- Fennel

    -- NOTE: Very weird queries
    fennelTSFuncMacro = { link = 'TSKeywordFunction' },
    fennelTSField = { link = 'luaTSField' },
    -- fennel.vim
    FennelStringDelimiter = { fg = '#5FB4B4' },
    FennelParen = { link = 'TSPunctBracket' },
    FennelSpecialForm = { fg = '#c695C6', italic = true },
    FennelKeyword = { fg = '#84C2BB' },
    FennelTable = { link = 'luaTSPunctDelimiter' },

    --- indent-blankline
    IndentBlanklineContextChar = { fg = '#4E5A65' },
    IndentBlanklineContextStart = { sp = '#4E5A65', underline = true },

    -- HELP

    helpTSTitle = { fg = '#CBD3E2' },
    helpTSTextReference = { link = 'TSURI' },

    -- DIAGNOSTICS

    DiagnosticError = { fg = '#EF695D' },
    DiagnosticHint = { fg = '#FBC760' },
    DiagnosticInfo = { fg = '#5FB4B4' },
    DiagnosticUnderlineError = { sp = '#EF5D64', underdotted = true },
    DiagnosticUnderlineHint = { sp = '#D8DEE9', underdotted = true },
    DiagnosticUnderlineInfo = { sp = '#5FB4B4', underdotted = true },
    DiagnosticUnderlineWarn = { sp = '#FAAE57', underdotted = true },
    DiagnosticWarn = { fg = '#FAAE57' },
}

local function set_hl(colors)
    for group, attrs in pairs(colors) do
        vim.api.nvim_set_hl(0, group, attrs)
    end
end

function M.load()
    if vim.g.colors_name then
        vim.cmd('hi clear')
    end
    vim.cmd('highlight clear')
    vim.cmd('set t_Co=256')
    vim.cmd("let g:colors_name='mariana'")

    set_hl(highlights)
end

return M
