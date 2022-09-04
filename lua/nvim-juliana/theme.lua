---@class SublimeTextPalette
---@field black string: '#000000'
---@field blue string: '#5c99d6'
---@field blue2 string: '#46525c'
---@field blue3 string: '#303841'
---@field blue5 string: '#5fb4b4'
---@field blue6 string: '#a6acb8'
---@field gray string: '#333333'
---@field green string: '#99c794'
---@field orange string: '#f9ae58'
---@field orange3 string: '#fac761'
---@field pink string: '#cc8ec6'
---@field red string: '#ec5f66'
---@field red2 string: '#f97b58'
---@field white string: '#ffffff'
---@field white3 string: '#d5dee6'
local colors = require('nvim-juliana.colors')
colors.bg_extra = '#272e35'

local background = colors.blue3
local foreground = colors.white3
local selection = colors.blue2

local error = colors.red
local hint = colors.orange3
local info = colors.blue5
local warn = colors.orange

return {

    --- Modes
    Normal = { fg = foreground, bg = background },
    Visual = { bg = selection },

    --- UI
    NormalFloat = { bg = colors.bg_extra },
    FloatBorder = { fg = '#7999B9', bg = background },

    Pmenu = { bg = colors.bg_extra },
    PmenuSbar = { fg = colors.blue2 },
    PmenuSel = { bg = colors.blue3, bold = true },
    PmenuThumb = { bg = '#58657E' },

    NonText = { fg = colors.blue2 },

    ColorColumn = { fg = '#CBD3E2', bg = '#2B333B' },

    Conceal = { fg = colors.blue6 },

    CursorLine = { bg = '#38424c' },
    CursorColumn = { link = 'CursorLine' },

    CursorLineNr = { link = 'LineNr' },

    DiffAdd = { sp = colors.green, underdotted = true },
    DiffChange = { sp = colors.red, underdotted = true },
    DiffDelete = { fg = colors.blue6 },
    DiffText = { italic = true },

    Directory = { fg = colors.blue5 },
    EndOfBuffer = { fg = '#2B333B' },
    Error = { fg = colors.red2 },
    ErrorMsg = { fg = colors.red },
    Exception = { fg = colors.pink },

    -- Folds
    Folded = { fg = colors.blue6 },
    FoldColumn = { bg = background },

    LineNr = { link = 'Visual' },
    LineNrAbove = { fg = colors.blue6 },
    LineNrBelow = { link = 'LineNrAbove' },

    ModeMsg = { fg = '#DEE1E8' },
    MoreMsg = { fg = '#DEE1E8', bold = true },
    Question = { link = 'MoreMsg' },

    Search = { link = 'Visual' },
    IncSearch = { link = 'Search' },

    SignColumn = { fg = foreground, bg = background },
    SpellBad = { sp = colors.red, undercurl = true },
    SpellCap = { sp = colors.orange, undercurl = true },
    SpellLocal = { sp = colors.blue5, undercurl = true },
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

    DiagnosticError = { fg = error, bold = true },
    DiagnosticHint = { fg = hint, bold = true },
    DiagnosticInfo = { fg = info, bold = true },
    DiagnosticWarn = { fg = warn, bold = true },
    DiagnosticUnderlineError = { sp = error, undercurl = true },
    DiagnosticUnderlineHint = { sp = hint, undercurl = true },
    DiagnosticUnderlineInfo = { sp = info, undercurl = true },
    DiagnosticUnderlineWarn = { sp = warn, undercurl = true },

    DiagnosticVirtualTextError = { bg = colors.bg_extra, fg = error },
    DiagnosticVirtualTextWarn = { bg = colors.bg_extra, fg = warn },
    DiagnosticVirtualTextInfo = { bg = colors.bg_extra, fg = info },
    DiagnosticVirtualTextHint = { bg = colors.bg_extra, fg = hint },

    -- VimSyntax hl-groups

    Boolean = { fg = colors.red, italic = true },
    MatchParen = { bold = true },

    Character = { fg = colors.green },

    String = { fg = colors.green },
    Comment = { fg = colors.blue6 },
    Conditional = { fg = colors.pink },
    Constant = { fg = colors.orange },
    Define = { fg = colors.pink, italic = true },

    Delimiter = { fg = colors.blue6 },
    Float = { link = 'Number' },
    Function = { fg = colors.blue5 },
    Identifier = { fg = foreground },
    Include = { fg = '#7999B9' },

    Keyword = { fg = colors.pink, italic = true },

    Label = { fg = colors.pink },
    Macro = { fg = '#8DADE7' },
    Number = { fg = colors.orange },
    Operator = { fg = colors.red2 },
    PreCondit = { link = 'Include' },
    PreProc = { fg = '#A7B4CD' },
    Repeat = { fg = colors.pink },

    Special = { fg = colors.blue5 },

    SpecialChar = { fg = colors.blue5 },

    SpecialComment = { fg = '#788797', underline = true },
    SpecialKey = { fg = colors.blue5 },
    Statement = { fg = colors.pink },
    StorageClass = { fg = colors.red },
    Structure = { link = 'StorageClass' },
    Struct = { link = 'Structure' },
    Tag = { fg = colors.red },
    Title = { fg = foreground, bold = true },
    Todo = { fg = colors.blue, bold = true },
    Type = { fg = colors.orange },
    Typedef = { link = 'Structure' },
    Underlined = { underdotted = true },
    Whitespace = { fg = '#5C75A3' },

    -- TS-hl globals

    TSPunctBracket = { link = 'Delimiter' },
    TSPunctDelimiter = { link = 'Delimiter' },
    TSPunctSpecial = { fg = colors.blue5 },

    TSConstant = { link = 'Constant' },
    TSConstBuiltin = { fg = colors.red, italic = true },
    TSConstMacro = { link = 'Define' },
    TSString = { link = 'String' },

    TSStringRegex = { fg = colors.blue5 },
    TSStringEscape = { link = 'SpecialChar' },
    TSStringSpecial = { link = 'SpecialChar' },

    TSCharacter = { link = 'Character' },
    TSCharacterSpecial = { link = 'SpecialChar' },

    TSNumber = { link = 'Number' },
    TSBoolean = { link = 'Boolean' },
    TSFloat = { link = 'Float' },

    TSFunction = { link = 'Function' },
    TSFunctionCall = { link = 'TSFunction' },
    TSFuncBuiltin = { fg = colors.blue },
    -- TSFuncMacro = { fg = colors.blue, italic = true },
    TSFuncMacro = { link = 'Macro' },

    TSParameter = { fg = colors.orange },
    TSParameterReference = { link = 'TSParameter' },
    TSMethod = { fg = '#5cb3d6' },
    TSMethodCall = { link = 'TSMethod' },
    TSField = { fg = '#95B2D6' },

    ---- kaiuri: Continue from here
    --references:
    --  https://github.com/nvim-treesitter/nvim-treesitter/blob/master/lua/nvim-treesitter/highlight.lua
    --  https://github.com/neovim/neovim/blob/master/runtime/lua/vim/treesitter/highlighter.lua
    --  https://github.com/theHamsta/nvim-semantic-tokens/blob/master/lua/nvim-semantic-tokens/presets/default.lua

    TSComment = { link = 'Comment' },
    TSDanger = { fg = colors.red, bold = true },
    TSEmphasis = { italic = true },
    TSEnum = { link = 'TSType' },
    TSError = { fg = foreground },
    TSInclude = { fg = colors.pink },
    TSInterface = { link = 'TSType' },
    TSKeyword = { link = 'Keyword' },
    TSKeywordFunction = { fg = colors.pink, italic = true },
    TSKeywordOperator = { fg = colors.pink },
    TSKeywordReturn = { link = 'TSKeyword' },
    TSLabel = { fg = colors.blue5 },
    TSNamespace = { fg = colors.orange },
    TSNote = { fg = colors.green, bold = true },
    TSOperator = { link = 'Operator' },
    TSProperty = { fg = '#95B2D6' },
    TSStrong = { bold = true },
    TSSymbol = { fg = '#7EBFC4' },
    TSTag = { link = 'Tag' },
    TSTagAttribute = { fg = colors.pink },
    TSTagDelimiter = { fg = colors.blue5 },
    TSText = { fg = foreground },
    TSTextReference = { fg = foreground, underdotted = true },

    TSTitle = { link = 'Title' },

    TSTodo = { link = 'Todo' },
    TSType = { link = 'Type' },
    TSTypeBuiltin = { fg = colors.blue, italic = true },
    TSTypeQualifier = { fg = colors.red },
    TSURI = { fg = colors.blue5, underdotted = true },
    TSUnderline = { underline = true },
    TSVariable = { fg = foreground },
    TSVariableBuiltin = { fg = colors.red, italic = true },
    TSWarning = { fg = colors.orange, bold = true },

    --- HTML
    htmlTagName = { link = 'Tag' },
    -- git.vim

    gitCommitSelectedFile = { italic = true },
    gitCommitSummary = { bold = true },
    gitCommitTrailerToken = { fg = colors.pink, italic = true },

    --- health.vim
    healthHelp = { fg = colors.orange3 },
    healthSuccess = { fg = colors.green },

    -- luaTS
    luaTable = { link = 'TSPunctBracket' },

    -- markdownTS
    markdownTSPunctSpecial = { fg = colors.red2, bold = true },

    --- quickfix.vim
    qfFileName = { fg = colors.blue5 },
    qfLineNr = { bold = true },

    -- RUST
    rustTSConstBuiltin = { link = 'TSConstant', italic = true },
    rustTSField = { fg = '#CBD3E2' },
    rustTSFuncMacro = { fg = colors.blue },
    rustTSFunction = { fg = colors.blue5 },
    rustTSKeyword = { fg = colors.pink },
    rustTSOperator = { link = 'TSOperator' },
    rustTSPunctBracket = { fg = '#CBD3E2' },
    rustTSPunctDelimiter = { fg = colors.blue6 },
    rustTSType = { fg = colors.orange },
    rustTSTypeBuiltin = { fg = colors.pink, italic = true },

    -- golangTS

    goTSKeyword = { fg = colors.red },
    goTSType = { fg = colors.blue5 },
    goTSFunction = { link = 'TSFunction' },
    goTSNamespace = { link = 'TSNamespace' },

    -- tmux

    tmuxCommands = { fg = colors.pink },
    tmuxFlags = { fg = colors.orange },
    tmuxFormatString = { fg = colors.blue5 },

    -- typescriptTS

    typescriptTSFunction = { link = 'Function' },
    typescriptTSConstructor = { fg = colors.orange },
    typescriptTSOperator = { link = 'TSOperator' },
    typescriptTSParameter = { fg = colors.orange },
    typescriptTSType = { fg = colors.blue5 },
    typescriptTSKeyword = { fg = '#ec5f89', italic = true },
    -- typescriptTSPunctSpecial = { fg = colors.red },
    --- JavaScript
    jsdocTSKeyword = { link = 'typescriptType' },
    javaScriptReserved = { fg = colors.red },

    --- fennelTS

    fennelTSFuncMacro = { link = 'TSKeywordFunction' },
    fennelTSField = { link = 'TSField' },
    --- CSS
    cssTSType = { fg = colors.blue5 },

    -- fennel.vim
    FennelStringDelimiter = { fg = colors.blue5 },
    FennelParen = { link = 'TSPunctBracket' },
    FennelSpecialForm = { fg = colors.pink, italic = true },
    FennelKeyword = { link = 'clojureTSKeyword' },
    FennelTable = { link = 'luaTSPunctDelimiter' },

    --- clojureTS
    clojureTSKeywordFunction = { fg = colors.red },
    clojureTSKeyword = { fg = colors.red },
    clojureTSSymbol = { fg = colors.pink },

    clojureTSVariableBuiltin = { link = 'TSConstBuiltin' },
    clojureTSPunctSpecial = { fg = colors.red2 },
    clojureTSFuncMacro = { fg = colors.red2 },

    --- Data Serialization Languages
    tomlproperty = { fg = colors.blue5 },

    yamlfield = { fg = colors.blue5 },

    jsonKeyword = { fg = colors.blue5 },

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
    CmpItemKindClass = { fg = colors.red },
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


    --- gitsigns.nvim
    GitSignsDelete = { fg = error, bold = true },
    GitSignsChange = { fg = hint, bold = true },
    GitSignsAdd = { fg = info, bold = true },

    --- vim.lsp
    LspReferenceText = { bg = '#38424c' },
    LspReferenceRead = { link = 'LspReferenceText' },
    LspReferenceWrite = { link = 'LspReferenceText' },

    --- Telescope
    TelescopeBorder = { link = 'NonText' },
    TelescopeTitle = { fg = foreground, bold = true },
    TelescopePromptCounter = { fg = foreground },
    TelescopeMatching = { bg = background },
    TelescopeSelectionCaret = { fg = foreground },
    TelescopeSelection = { link = 'Visual' },

    --- dressing.nvim
    FloatTitle = { link = 'Comment' },

    ---  symbols-outline.nvim
    FocusedSymbol = { link = 'Visual' },

    -- Trouble
    TroubleIndent = { bg = colors.blue3 },
    TroubleLocation = { bold = true },

    -- Temporary native lsp semantic highlighting
    -- https://github.com/theHamsta/nvim-semantic-tokens
    LspNamespace = { link = 'TSNamespace' },
    LspType = { link = 'TSType' },
    LspClass = { link = 'TSType' },
    LspEnum = { link = 'TSType' },
    LspInterface = { link = 'TSType' },
    LspStruct = { link = 'TSType' },
    LspTypeParameter = { link = 'TSType' },
    LspParameter = { link = 'TSParameter' },
    LspVariable = { link = 'TSVariable' },
    LspProperty = { link = 'TSProperty' },
    LspEnumMember = { link = 'TSField' },
    -- LspEvent = {},
    LspFunction = { fg = colors.blue },
    LspMethod = { link = 'TSMethod' },
    LspMacro = { link = 'Macro' },
    LspKeyword = { link = 'TSKeyword' },
    -- LspModifier = {},
    LspComment = { link = 'TSComment' },
    LspString = { link = 'TSString' },
    LspNumber = { link = 'TSNumber' },
    LspRegexp = { link = 'TSStringRegex' },
    LspOperator = { link = 'TSOperator' },
    -- LspDeclaration = { link = 'TSType' },
    -- LspDefinition = {},
    LspReadonly = { link = 'TSKeyword' },
    LspStatic = { fg = colors.orange },
    LspDeprecated = { strikethrough = true },
    -- LspAbstract = {},
    LspAsync = { fg = colors.red },
    -- LspModification = {},
    -- LspDocumentation = {},
    LspDefaultLibrary = { fg = colors.blue },

}
