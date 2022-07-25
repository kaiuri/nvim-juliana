--# selene: allow(unscoped_variables)
--# selene: allow(undefined_variable)
local M = {}

local colors = {
    blue2 = '#46525C',
    blue3 = '#303841',
    blue5 = '#5FB4B4',
    blue6 = '#A6ACB8',
    blue_vibrant = '#5c99d6',
    gray = '#333333',
    green = '#99C794',
    orange = '#F9AE58',
    orange3 = '#FAC761',
    red = '#EC5F66',
    red2 = '#F97B58',
    pink = '#C694C1',
    white = '#FFFFFF',
    white3 = '#D8DEE3',
}
local background = colors.blue3
local foreground = colors.white3
local selection = colors.blue2
local find_highlight_foreground = colors.gray
local find_highlight = colors.orange3

local highlights = {

    --- Modes
    Normal = { fg = foreground, bg = background },
    NormalFloat = { bg = '#272E35' },
    Visual = { bg = selection },

    --- UI
    ColorColumn = { fg = '#CBD3E2', bg = '#2B333B' },
    Conceal = { fg = '#5A6B8C' },
    CursorColumn = { link = 'CursorLine' },
    CursorLine = { link = 'Visual' },
    CursorLineNr = { link = 'LineNr' },
    DiffAdd = { sp = '#93CF8C', underdotted = true },
    DiffChange = { sp = '#EF5D64', underdotted = true },
    DiffDelete = { fg = '#788797' },
    DiffText = { italic = true },
    Directory = { underdotted = true },
    EndOfBuffer = { fg = '#2B333B' },
    Error = { fg = '#FA7A57' },
    ErrorMsg = { fg = '#EF5D64' },
    Exception = { fg = colors.pink },
    FoldColumn = { fg = '#CBD3E2', bg = '#2B333B' },
    Folded = { sp = '#647382', underdashed = true },
    LineNr = { link = 'Visual' },
    LineNrAbove = { fg = '#A6ACB9' },
    LineNrBelow = { fg = '#A6ACB9' },
    ModeMsg = { fg = '#DEE1E8' },
    MoreMsg = { fg = '#DEE1E8', bold = true },
    NonText = { fg = '#5A6B8C' },
    Pmenu = { link = 'NormalFloat' },
    PmenuSbar = { fg = '#CBD3E2', bg = '#2B333B' },
    PmenuSel = { bg = '#272E35', bold = true },
    PmenuThumb = { bg = '#58657E' },
    Question = { link = 'MoreMsg' },

    Search = { fg = find_highlight_foreground, bg = find_highlight },
    IncSearch = { link = 'Search' },

    SignColumn = { fg = foreground, bg = background },
    SpellBad = { sp = '#EF5D64', undercurl = true },
    SpellCap = { sp = '#FAAE57', undercurl = true },
    SpellLocal = { sp = '#48CBCB', undercurl = true },
    SpellRare = { sp = colors.pink, undercurl = true },
    StatusLine = { fg = '#CBD3E2', bg = '#3D4752' },
    StatusLineNC = { fg = '#CBD3E2', bg = '#2B333B' },
    Substitute = { link = 'Visual' },
    TabLine = { fg = '#CBD3E2', bg = '#2B333B' },
    TabLineFill = { fg = '#CBD3E2', bg = '#2B333B' },
    TabLineSel = { fg = '#CBD3E2', bg = '#2B333B' },
    VertSplit = { fg = '#4E5A65' },
    WarningMsg = { link = 'ErrorMsg' },
    WildMenu = { link = 'Pmenu' },
    Winseparator = { fg = '#4E5A65' },

    -- Diagnostics

    DiagnosticError = { fg = colors.red },
    DiagnosticHint = { fg = '#D8DEE9' },
    DiagnosticInfo = { fg = colors.blue5 },
    DiagnosticWarn = { fg = colors.orange },
    DiagnosticUnderlineError = { sp = colors.red, underdotted = true },
    DiagnosticUnderlineHint = { sp = '#D8DEE9', underdotted = true },
    DiagnosticUnderlineInfo = { sp = '#5FB4B4', underdotted = true },
    DiagnosticUnderlineWarn = { sp = '#FAAE57', underdotted = true },

    -- VimSyntax hl-groups

    MatchParen = { bold = true },
    Boolean = { link = 'Constant' },
    Character = { fg = colors.green },
    String = { fg = colors.green },
    Comment = { fg = colors.blue6 },
    Conditional = { fg = colors.pink },
    Constant = { fg = colors.pink },
    Define = { link = 'Macro' },
    Delimiter = { fg = colors.blue6 },
    Float = { link = 'Number' },
    Function = { fg = colors.blue_vibrant },
    Identifier = { fg = '#CBD3E2' },
    Include = { fg = '#7999B9' },
    Keyword = { fg = colors.pink },
    Label = { fg = colors.pink },
    Macro = { fg = '#8DADE7' },
    Number = { fg = colors.orange },
    Operator = { fg = colors.red2 },
    PreCondit = { link = 'Include' },
    PreProc = { fg = '#A7B4CD' },
    Repeat = { fg = colors.pink },
    Special = { fg = '#5FB4B4' },
    SpecialChar = { fg = '#5FB485' },
    SpecialComment = { fg = '#788797', underline = true },
    SpecialKey = { fg = '#48CBCB' },
    Statement = { fg = colors.pink },
    StorageClass = { fg = colors.red },
    Structure = { fg = colors.pink },
    Tag = { fg = colors.pink },
    Title = { fg = colors.pink },
    Todo = { fg = colors.blue_vibrant, bold = true },
    Type = { fg = colors.pink, italic = true },
    Typedef = { link = 'Structure' },
    Underlined = { underdotted = true },
    Whitespace = { fg = '#5C75A3' },

    -- TS-hl globals
    TSBoolean = { fg = colors.red, italic = true },
    TSConstBuiltin = { fg = '#EF5D64', italic = true },
    TSConstMacro = { fg = colors.pink, italic = true },
    TSComment = { link = 'Comment' },
    TSConstant = { fg = colors.orange },
    TSDanger = { fg = '#EF5D64', bold = true },
    TSEmphasis = { italic = true },
    TSError = { fg = '#CBD3E2' },
    TSField = { fg = colors.pink },
    TSFuncMacro = { fg = '#5E99D4', italic = true },
    TSFunction = { link = 'Function' },
    TSInclude = { fg = colors.pink },
    TSKeyword = { fg = colors.pink, italic = true },
    TSKeywordFunction = { fg = colors.pink, italic = true },
    TSKeywordOperator = { fg = colors.pink },
    TSKeywordReturn = { fg = colors.pink },
    TSLabel = { fg = '#84C2BB' },
    TSMethod = { link = 'Function' },
    TSNamespace = { fg = colors.orange },
    TSNote = { fg = '#93CF8C', bold = true },
    TSOperator = { link = 'Operator' },
    TSParameter = { fg = '#FAAE57' },
    TSProperty = { fg = '#95B2D6' },
    TSPunctBracket = { fg = colors.white },
    TSPunctDelimiter = { link = 'Delimiter' },
    TSPunctSpecial = { fg = '#5EBBD4' },
    TSStringEscape = { fg = '#8CC0CF' },
    TSStringRegex = { fg = '#8CC0CF' },
    TSStrong = { bold = true },
    TSSymbol = { fg = '#7EBFC4' },
    TSText = { fg = '#CBD3E2' },
    TSTextReference = { fg = '#CBD3E2', underdotted = true },
    TSTitle = { fg = '#CBD3E2', bold = true },
    TSType = { fg = colors.orange },
    TSTypeBuiltin = { fg = '#5E99D4', italic = true },
    TSURI = { fg = '#5FB4B4', underdotted = true },
    TSUnderline = { underline = true },
    TSVariable = { fg = foreground },
    TSVariableBuiltin = { fg = '#EF5D64', italic = true },
    TSWarning = { fg = '#FAAE57', bold = true },

    --- commentTS
    commentTSConstant = { fg = '#8C99A6' },

    -- git.vim

    gitCommitSelectedFile = { italic = true },
    gitCommitSummary = { bold = true },
    gitCommitTrailerToken = { fg = colors.pink, italic = true },

    --- health.vim
    healthHelp = { fg = '#FBC760' },
    healthSuccess = { fg = '#93CF8C' },

    -- htmlTS
    htmlTSOperator = { link = 'TSOperator' },
    htmlTSTag = { fg = '#EF5D64' },
    htmlTSTagAttribute = { fg = colors.pink },
    htmlTSTagDelimiter = { fg = '#5FB4B4' },

    -- cssTS

    cssTSProperty = { link = 'TSProperty' },
    cssTSPunctDelimiter = { fg = colors.blue_vibrant },
    cssTSNumber = { fg = colors.red2 },

    -- luaTS
    luaTSField = { link = 'TSProperty' },

    -- markdownTS
    markdownTSPunctSpecial = { fg = '#EF7A5D', bold = true },

    --- quickfix.vim
    qfFileName = { fg = '#5FB4B4' },
    qfLineNr = { bold = true },

    -- RUST
    rustTSConstBuiltin = { link = 'TSConstant', italic = true },
    rustTSField = { fg = '#CBD3E2' },
    rustTSFuncMacro = { fg = '#5E99D4' },
    rustTSFunction = { fg = '#5FB4B4' },
    rustTSKeyword = { fg = colors.pink },
    rustTSOperator = { link = 'TSOperator' },
    rustTSPunctBracket = { fg = '#CBD3E2' },
    rustTSPunctDelimiter = { fg = '#A6ACB9' },
    rustTSType = { fg = '#FAAE57' },
    rustTSTypeBuiltin = { fg = colors.pink, italic = true },

    -- golangTS

    goTSKeyword = { fg = '#EF5D64' },
    goTSType = { fg = '#5FB4B4' },
    goTSFunction = { link = 'TSFunction' },
    goTSNamespace = { link = 'TSNamespace' },

    -- tmux

    tmuxCommands = { fg = colors.pink },
    tmuxFlags = { fg = '#FAAE57' },
    tmuxFormatString = { fg = '#5FB4B4' },

    -- typescriptTS

    typescriptTSProperty = { fg = '#95B2D6' },
    typescriptTSFunction = { fg = '#5FB4B4' },
    typescriptTSConstructor = { fg = '#FAAE57' },
    typescriptTSOperator = { link = 'TSOperator' },
    -- typescriptTSPunctSpecial = { fg = colors.red },

    --- fennelTS

    fennelTSFuncMacro = { link = 'TSKeywordFunction' },
    fennelTSField = { link = 'luaTSField' },

    -- fennel.vim
    FennelStringDelimiter = { fg = '#5FB4B4' },
    FennelParen = { link = 'TSPunctBracket' },
    FennelSpecialForm = { fg = colors.pink, italic = true },
    FennelKeyword = { fg = '#84C2BB' },
    FennelTable = { link = 'luaTSPunctDelimiter' },

    --- clojureTS
    clojureTSKeywordFunction = { fg = colors.red },
    clojureTSKeyword = { fg = colors.red },
    clojureTSSymbol = { fg = colors.pink },

    clojureTSNumber = { fg = colors.red2 },
    clojureTSVariableBuiltin = { link = 'TSConstBuiltin' },
    clojureTSPunctSpecial = { fg = colors.red2 },
    clojureTSFuncMacro = { fg = colors.red2 },

    --- tomlTS
    tomlTSProperty = { link = 'TSLabel' },

    -- yamlTS
    yamlTSField = { link = 'TSLabel' },

    -- helpTS

    helpTSTitle = { fg = '#CBD3E2' },
    helpTSTextReference = { link = 'TSURI' },

    --- Python
    pythonTSField = { fg = '#95B2D6' },

    --- Plugins
    -- Rainbow Parentheses

    rainbowcol1 = { fg = '#FEDB95' },
    rainbowcol2 = { fg = '#A3FE95' },
    rainbowcol3 = { fg = '#95F7FE' },
    rainbowcol4 = { fg = '#B195FE' },
    rainbowcol5 = { fg = '#FE95CD' },
    rainbowcol6 = { fg = '#FEDB95' },
    rainbowcol7 = { fg = '#A3FE95' },

    --- indent-blankline
    IndentBlanklineContextChar = { fg = '#4E5A65' },
    IndentBlanklineContextStart = { sp = '#4E5A65', underline = true },

    --- nvim-cmp

    CmpItemKindStruct = { link = 'Structure' },
    CmpItemKindFunction = { link = 'Function' },
    CmpItemKindValue = { link = 'Number' },
    CmpItemAbbrDeprecated = { strikethrough = true },
    CmpItemKindClass = { fg = '#EF5D64' },
    CmpItemKindEnum = { link = 'CmpItemKindClass' },
    CmpItemKindInterface = { link = 'CmpItemKindClass' },
    CmpItemKindMethod = { fg = '#8EB8E1' },
    CmpItemKindUnit = { link = 'CmpItemKindValue' },
    CmpItemKindConstant = { link = 'TSConstant' },
    CmpItemKindField = { link = 'TSField' },
    CmpItemKindModule = { link = 'TSInclude' },
    CmpItemKindKeyword = { link = 'TSKeyword' },
    CmpItemKindEnumMember = { link = 'TSLabel' },
    CmpItemKindProperty = { link = 'TSLabel' },
    CmpItemKindOperator = { link = 'TSOperator' },
    CmpItemKindReference = { link = 'TSSymbol' },
    CmpItemKindSnippet = { link = 'TSText' },
    CmpItemKindTypeParameter = { link = 'TSType' },
    CmpItemKindVariable = { link = 'TSVariable' },

    --- Sneak.vim
    Sneak = { link = 'Search' },
    SneakLabel = { link = 'Search' },

    --- Nvim-tree
    NvimTreePopup = { fg = '#CBD3E2', bg = '#272E35' },

    --- gitsigns.nvim
    GitSignsDelete = { fg = colors.red, bold = true },
    GitSignsChange = { fg = colors.orange, bold = true },
    GitSignsAdd = { fg = colors.green, bold = true },

    --- vim.lsp
    LspReferenceText = { bg = '#38424c' },
    LspReferenceRead = { link = 'LspReferenceText' },
    LspReferenceWrite = { link = 'LspReferenceText' },
}

local function set_hl(tbl)
    for group, attrs in pairs(tbl) do
        vim.api.nvim_set_hl(0, group, attrs)
    end
end

function M.load()
    if vim.g.colors_name then
        vim.cmd('hi clear')
    end
    vim.cmd('highlight clear')
    vim.cmd('set t_Co=256')
    vim.cmd("let g:colors_name='juliana'")

    set_hl(highlights)
end

return M
