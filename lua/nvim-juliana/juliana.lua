--# selene: allow(unscoped_variables)
--# selene: allow(undefined_variable)
local M = {}
local c = require('nvim-juliana.palette').normal

local background = c.gray1
local foreground = c.gray4
local selection = c.gray2
local find_highlight_foreground = c.gray0
local find_highlight = c.yellow

local highlights = {

    --- Modes
    Normal = { fg = foreground, bg = background },
    NormalFloat = { bg = '#272E35' },
    Visual = { bg = selection },

    --- UI
    NonText = { fg = c.gray2 },

    ColorColumn = { fg = '#CBD3E2', bg = '#2B333B' },

    Conceal = { fg = c.gray3 },

    CursorLine = { bg = '#38424c' },
    CursorColumn = { link = 'CursorLine' },

    CursorLineNr = { link = 'LineNr' },

    DiffAdd = { sp = c.green, underdotted = true },
    DiffChange = { sp = c.red, underdotted = true },
    DiffDelete = { fg = c.gray3 },
    DiffText = { italic = true },
    Directory = { underdotted = true },
    EndOfBuffer = { fg = '#2B333B' },
    Error = { fg = c.orange2 },
    ErrorMsg = { fg = c.red },
    Exception = { fg = c.pink },

    -- Folds
    Folded = { fg = c.gray3 },
    FoldColumn = { bg = background },

    LineNr = { link = 'Visual' },
    LineNrAbove = { fg = c.gray3 },
    LineNrBelow = { link = 'LineNrAbove' },

    ModeMsg = { fg = '#DEE1E8' },
    MoreMsg = { fg = '#DEE1E8', bold = true },
    Pmenu = { link = 'NormalFloat' },
    PmenuSbar = { fg = '#CBD3E2', bg = '#2B333B' },
    PmenuSel = { bg = '#272E35', bold = true },
    PmenuThumb = { bg = '#58657E' },
    Question = { link = 'MoreMsg' },

    Search = { fg = find_highlight_foreground, bg = find_highlight },
    IncSearch = { link = 'Search' },

    SignColumn = { fg = foreground, bg = background },
    SpellBad = { sp = c.red, undercurl = true },
    SpellCap = { sp = c.orange1, undercurl = true },
    SpellLocal = { sp = c.cyan, undercurl = true },
    SpellRare = { sp = c.pink, undercurl = true },
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

    DiagnosticError = { fg = c.red },
    DiagnosticHint = { fg = '#D8DEE9' },
    DiagnosticInfo = { fg = c.cyan },
    DiagnosticWarn = { fg = c.orange1 },
    DiagnosticUnderlineError = { sp = c.red, underdotted = true },
    DiagnosticUnderlineHint = { sp = '#D8DEE9', underdotted = true },
    DiagnosticUnderlineInfo = { sp = c.cyan, underdotted = true },
    DiagnosticUnderlineWarn = { sp = c.orange1, underdotted = true },

    -- VimSyntax hl-groups

    MatchParen = { bold = true },
    Boolean = { fg = c.red, italic = true },
    Character = { fg = c.green },
    String = { fg = c.green },
    Comment = { fg = c.gray3 },
    Conditional = { fg = c.pink },
    Constant = { fg = c.pink },
    Define = { link = 'Macro' },
    Delimiter = { fg = c.gray3 },
    Float = { link = 'Number' },
    Function = { fg = c.blue },
    Identifier = { fg = foreground },
    Include = { fg = '#7999B9' },
    Keyword = { fg = c.pink, italic = true },
    Label = { fg = c.pink },
    Macro = { fg = '#8DADE7' },
    Number = { fg = c.orange1 },
    Operator = { fg = c.orange2 },
    PreCondit = { link = 'Include' },
    PreProc = { fg = '#A7B4CD' },
    Repeat = { fg = c.pink },
    Special = { fg = c.cyan },
    SpecialChar = { fg = '#5FB485' },
    SpecialComment = { fg = '#788797', underline = true },
    SpecialKey = { fg = c.cyan },
    Statement = { fg = c.pink },
    StorageClass = { fg = c.red },
    Structure = { fg = c.pink },
    Tag = { fg = c.red },
    Title = { fg = c.pink },
    Todo = { fg = c.blue, bold = true },
    Type = { fg = c.pink, italic = true },
    Typedef = { link = 'Structure' },
    Underlined = { underdotted = true },
    Whitespace = { fg = '#5C75A3' },

    -- TS-hl globals
    TSBoolean = { link = 'Boolean' },
    TSConstBuiltin = { fg = c.red, italic = true },
    TSConstMacro = { fg = c.pink, italic = true },
    TSComment = { link = 'Comment' },
    TSConstant = { fg = c.orange1 },
    TSDanger = { fg = c.red, bold = true },
    TSEmphasis = { italic = true },
    TSError = { fg = foreground },
    TSField = { fg = c.pink },
    TSFuncMacro = { fg = c.blue, italic = true },
    TSFunction = { link = 'Function' },
    TSInclude = { fg = c.pink },
    TSKeyword = { link = 'Keyword' },
    TSKeywordFunction = { fg = c.pink, italic = true },
    TSKeywordOperator = { fg = c.pink },
    TSKeywordReturn = { fg = c.pink },
    TSLabel = { fg = c.cyan },
    TSMethod = { link = 'Function' },
    TSNamespace = { fg = c.orange1 },
    TSNote = { fg = c.green, bold = true },
    TSOperator = { link = 'Operator' },
    TSParameter = { fg = c.orange1 },
    TSProperty = { fg = '#95B2D6' },
    TSPunctBracket = { bg = background },
    TSPunctDelimiter = { link = 'Delimiter' },
    TSPunctSpecial = { fg = c.cyan },
    TSStringEscape = { fg = c.cyan },
    TSStringRegex = { fg = c.cyan },
    TSString = { link = 'String' },
    TSStrong = { bold = true },
    TSSymbol = { fg = '#7EBFC4' },
    TSText = { fg = foreground },
    TSTextReference = { fg = foreground, underdotted = true },
    TSTitle = { fg = foreground, bold = true },
    TSType = { fg = c.orange1 },
    TSTypeQualifier = { fg = c.red },
    TSTypeBuiltin = { fg = c.blue, italic = true },
    TSURI = { fg = c.cyan, underdotted = true },
    TSUnderline = { underline = true },
    TSVariable = { fg = foreground },
    TSVariableBuiltin = { fg = c.red, italic = true },
    TSWarning = { fg = c.orange1, bold = true },
    TSNumber = { link = 'Number' },

    TSTag = { link = 'Tag' },
    TSTagDelimiter = { fg = c.cyan },
    TSTagAttribute = { fg = c.pink },

    --- commentTS
    commentTSConstant = { fg = '#8C99A6' },

    -- git.vim

    gitCommitSelectedFile = { italic = true },
    gitCommitSummary = { bold = true },
    gitCommitTrailerToken = { fg = c.pink, italic = true },

    --- health.vim
    healthHelp = { fg = c.yellow },
    healthSuccess = { fg = c.green },

    -- luaTS
    luaTSField = { link = 'TSProperty' },
    luaTSConstructor = { link = 'TSPunctBracket' },
    luaTable = { link = 'TSPunctBracket' },

    -- markdownTS
    markdownTSPunctSpecial = { fg = c.orange2, bold = true },

    --- quickfix.vim
    qfFileName = { fg = c.cyan },
    qfLineNr = { bold = true },

    -- RUST
    rustTSConstBuiltin = { link = 'TSConstant', italic = true },
    rustTSField = { fg = '#CBD3E2' },
    rustTSFuncMacro = { fg = c.blue },
    rustTSFunction = { fg = c.cyan },
    rustTSKeyword = { fg = c.pink },
    rustTSOperator = { link = 'TSOperator' },
    rustTSPunctBracket = { fg = '#CBD3E2' },
    rustTSPunctDelimiter = { fg = c.gray3 },
    rustTSType = { fg = c.orange1 },
    rustTSTypeBuiltin = { fg = c.pink, italic = true },

    -- golangTS

    goTSKeyword = { fg = c.red },
    goTSType = { fg = c.cyan },
    goTSFunction = { link = 'TSFunction' },
    goTSNamespace = { link = 'TSNamespace' },

    -- tmux

    tmuxCommands = { fg = c.pink },
    tmuxFlags = { fg = c.orange1 },
    tmuxFormatString = { fg = c.cyan },

    -- typescriptTS

    typescriptTSProperty = { fg = '#95B2D6' },
    typescriptTSFunction = { fg = c.cyan },
    typescriptTSConstructor = { fg = c.orange1 },
    typescriptTSOperator = { link = 'TSOperator' },
    typescriptTSParameter = { link = 'TSVariable' },
    typescriptType = { fg = c.red },
    typescriptTSKeyword = { fg = c.red },
    -- typescriptTSPunctSpecial = { fg = colors.red },
    --- JavaScript
    jsdocTSKeyword = { link = 'typescriptType' },

    --- fennelTS

    fennelTSFuncMacro = { link = 'TSKeywordFunction' },
    fennelTSField = { link = 'luaTSField' },
    --- CSS
    cssTSType = { fg = c.cyan },

    -- fennel.vim
    FennelStringDelimiter = { fg = c.cyan },
    FennelParen = { link = 'TSPunctBracket' },
    FennelSpecialForm = { fg = c.pink, italic = true },
    FennelKeyword = { link = 'clojureTSKeyword' },
    FennelTable = { link = 'luaTSPunctDelimiter' },

    --- clojureTS
    clojureTSKeywordFunction = { fg = c.red },
    clojureTSKeyword = { fg = c.red },
    clojureTSSymbol = { fg = c.pink },

    clojureTSVariableBuiltin = { link = 'TSConstBuiltin' },
    clojureTSPunctSpecial = { fg = c.orange2 },
    clojureTSFuncMacro = { fg = c.orange2 },

    --- tomlTS
    tomlTSProperty = { link = 'TSLabel' },

    -- yamlTS
    yamlTSField = { link = 'TSLabel' },

    -- helpTS

    helpTSTitle = { fg = foreground, bold = true },
    helpTSTextReference = { link = 'TSURI' },
    helpHyperTextEntry = { link = 'TSURI' },

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
    CmpItemKindClass = { fg = c.red },
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
    GitSignsDelete = { fg = c.red, bold = true },
    GitSignsChange = { fg = c.orange1, bold = true },
    GitSignsAdd = { fg = c.green, bold = true },

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
