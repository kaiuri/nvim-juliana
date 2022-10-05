local palette = require('nvim-juliana.palette')

local function Theme()
    local c = palette.colors

    local Foreground = {
        surface = c.gray5,
        muted = c.gray6,
        default = c.gray7,
        emphasis = c.gray8,
    }
    local Shade = {
        default = c.gray3,
        emphasis = c.gray1,
    }
    local Background = {
        emphasis = c.gray2,
        default = c.gray4,
        muted = c.gray5,
    }
    local Debug = c.red2
    local Trace = c.pink
    local Danger = c.red
    local Hint = c.cyan
    local Info = c.green
    local Warn = c.orange2

    ---@type HighlightDefMap[]
    local hl = {}

    hl.Normal = { fg = Foreground.default, bg = Background.default }
    hl.Visual = { bg = Background.muted }

    hl.NormalFloat = { bg = Background.emphasis }
    hl.FloatBorder = { fg = Foreground.surface, bg = Background.default }

    hl.Pmenu = { bg = Background.emphasis }
    hl.PmenuSel = { bg = Background.muted, fg = Foreground.emphasis, bold = false }
    hl.PmenuSbar = { bg = hl.Pmenu.bg, fg = hl.PmenuSel.bg }
    hl.PmenuThumb = { bg = hl.PmenuSel.bg }

    hl.NonText = { fg = Foreground.surface }

    hl.ColorColumn = { bg = Background.default }

    hl.Conceal = { fg = Foreground.muted }

    hl.CursorLine = { bg = Background.muted }
    hl.CursorColumn = { bg = Background.muted }
    hl.LineNr = { bg = Background.muted, fg = Foreground.emphasis }
    hl.LineNrAbove = { fg = Foreground.muted }
    hl.LineNrBelow = { fg = Foreground.muted }
    hl.CursorLineNr = { link = 'LineNr' }

    hl.DiffAdd = { sp = c.green, underline = true }
    hl.DiffChange = { sp = c.red, underline = true }
    hl.DiffDelete = { fg = Foreground.muted }
    hl.DiffText = { italic = true }
    hl.Directory = { fg = c.cyan }
    hl.EndOfBuffer = { fg = Foreground.surface }
    hl.Error = { fg = c.red2, bg = Shade.default }
    hl.ErrorMsg = { fg = c.red, bg = Shade.default }
    hl.Exception = { fg = c.pink, bg = Shade.default }
    hl.Folded = { fg = c.gray6, bg = Shade.default }
    hl.FoldColumn = { link = 'Comment' }

    hl.ModeMsg = { fg = Foreground.default }
    hl.MoreMsg = { fg = Foreground.default, bold = true }
    hl.Question = { link = 'MoreMsg' }

    hl.Search = { fg = c.gray0, bg = c.orange2 }
    hl.IncSearch = { fg = c.gray0, bg = c.orange2 }

    hl.SignColumn = { fg = Foreground.default, bg = Background.default }
    hl.SpellBad = { sp = c.red, undercurl = true }
    hl.SpellCap = { sp = c.orange2, undercurl = true }
    hl.SpellLocal = { sp = c.cyan, undercurl = true }
    hl.SpellRare = { sp = c.pink, undercurl = true }
    hl.StatusLine = { fg = Foreground.default, bg = c.gray5 }
    hl.StatusLineNC = { fg = Foreground.default, bg = c.gray2 }
    hl.Substitute = { bg = Background.muted }
    hl.TabLine = { fg = Foreground.muted, bg = Background.muted }
    hl.TabLineFill = { fg = Foreground.muted, bg = Background.muted }
    hl.TabLineSel = { fg = Foreground.default, bg = Shade.default }

    -- hl.VertSplit = { fg = Foreground.surface } -- @deprecated

    hl.WarningMsg = { link = 'ErrorMsg' }
    hl.WildMenu = hl.Pmenu

    hl.Winseparator = { fg = Foreground.surface }
    hl.VertSplit = hl.Winseparator

    hl.DiagnosticError = { fg = c.red }
    hl.DiagnosticSignError = { fg = hl.DiagnosticError.fg, bold = true }
    hl.DiagnosticUnderlineError = { sp = hl.DiagnosticError.fg, undercurl = true }
    hl.DiagnosticVirtualTextError = { fg = hl.DiagnosticError.fg }

    hl.DiagnosticHint = { fg = c.cyan }
    hl.DiagnosticSignHint = { fg = hl.DiagnosticHint.fg, bold = true }
    hl.DiagnosticUnderlineHint = { sp = hl.DiagnosticHint.fg, undercurl = true }
    hl.DiagnosticVirtualTextHint = { fg = hl.DiagnosticHint.fg }

    hl.DiagnosticInfo = { fg = c.green }
    hl.DiagnosticSignInfo = { fg = hl.DiagnosticInfo.fg, bold = true }
    hl.DiagnosticUnderlineInfo = { sp = hl.DiagnosticInfo.fg, undercurl = true }
    hl.DiagnosticVirtualTextInfo = { fg = hl.DiagnosticInfo.fg }

    hl.DiagnosticWarn = { fg = c.orange2 }
    hl.DiagnosticSignWarn = { fg = hl.DiagnosticWarn.fg, bold = true }
    hl.DiagnosticUnderlineWarn = { sp = hl.DiagnosticWarn.fg, undercurl = true }
    hl.DiagnosticVirtualTextWarn = { fg = hl.DiagnosticWarn.fg }

    hl.Boolean = { fg = c.red, italic = true, bg = Shade.default }
    hl.MatchParen = { bold = true, bg = Shade.default }
    hl.Character = { fg = c.green, bg = Shade.default }
    hl.String = { fg = c.green, bg = Shade.default }
    hl.Comment = { fg = Foreground.muted, bg = Shade.default }
    hl.Conditional = { fg = c.pink, bg = Shade.default }
    hl.Constant = { fg = c.gray9, bg = Shade.default }
    hl.Define = { fg = c.pink, italic = true, bg = Shade.default }
    hl.Delimiter = { fg = Foreground.muted, bg = Shade.emphasis }
    hl.Number = { fg = c.yellow, bg = Shade.default }
    hl.Float = hl.Number
    hl.Function = { fg = c.cyan, bg = Shade.default }
    hl.Identifier = { fg = Foreground.default, bg = Shade.default }
    hl.Include = { fg = c.red, bg = Shade.default }
    hl.PreCondit = { fg = c.red, bg = Shade.default }
    hl.Keyword = { fg = c.pink, italic = true, bg = Shade.default }
    hl.Label = { fg = c.pink, bg = Shade.default }
    hl.Macro = { fg = c.cyan, bg = Shade.default }
    hl.Operator = { fg = c.red2, bg = Shade.default }
    hl.PreProc = { fg = c.cyan, bg = Shade.default }
    hl.Repeat = { fg = c.pink, bg = Shade.default }
    hl.Special = { fg = c.cyan, bg = Shade.default }
    hl.SpecialChar = { fg = c.cyan, bg = Shade.default }
    hl.SpecialComment = { fg = '#788797', underline = true, bg = Shade.default }
    hl.SpecialKey = { fg = c.cyan, bg = Shade.default }
    hl.Statement = { fg = c.pink, bg = Shade.default }
    hl.StorageClass = { fg = c.red, bg = Shade.default }
    hl.Structure = { fg = c.red, bg = Shade.default }
    hl.Struct = { fg = c.red, bg = Shade.default }
    hl.Typedef = { fg = c.red, bg = Shade.default }
    hl.Tag = { fg = c.red, bg = Shade.default }
    hl.Title = { fg = Foreground.default, bold = true, bg = Shade.default }
    hl.Todo = { fg = c.blue0, bold = true, bg = Shade.default }
    hl.Type = { fg = c.orange2, bg = Shade.default }
    hl.Underlined = { underdotted = true }
    hl.Whitespace = { fg = Foreground.surface }

    hl.TSPunctBracket = { fg = Foreground.emphasis, bg = Shade.default }
    hl.TSPunctDelimiter = { link = 'Delimiter', bg = Shade.emphasis }
    hl.TSPunctSpecial = { fg = c.cyan, bg = Shade.default }
    hl.TSConstant = hl.Constant
    hl.TSConstBuiltin = { fg = c.red, italic = true, bg = Shade.default }
    hl.TSConstMacro = hl.Define
    hl.TSString = { fg = c.green, bg = Shade.default }
    hl.TSStringRegex = { fg = c.cyan, bg = Shade.default }
    hl.TSStringEscape = hl.SpecialChar
    hl.TSStringSpecial = hl.SpecialChar
    hl.TSCharacter = { fg = c.green, bg = Shade.default }
    hl.TSCharacterSpecial = { link = 'SpecialChar' }
    hl.TSNumber = hl.Number
    hl.TSBoolean = hl.Boolean
    hl.TSFloat = hl.Float
    hl.TSFunction = hl.Function
    hl.TSFunctionCall = { fg = c.blue0, bg = Shade.default }
    hl.TSFuncBuiltin = { fg = c.blue0, italic = true, bg = Shade.default }
    hl.TSFuncMacro = { fg = c.blue0, bg = Shade.default }
    hl.TSParameter = { fg = c.gray7, bg = Shade.default }
    hl.TSParameterReference = { fg = c.gray7, bg = Shade.default }
    hl.TSMethod = { fg = c.cyan, bg = Shade.default }
    hl.TSMethodCall = { fg = c.cyan, bg = Shade.default }
    hl.TSField = { fg = c.blue1, bg = Shade.default }
    hl.TSComment = { fg = Foreground.muted, bg = Shade.default }
    hl.TSDanger = { fg = c.red, bold = true, bg = Shade.default }
    hl.TSEmphasis = { italic = true }
    hl.TSEnum = { link = 'TSType' }
    hl.TSError = { fg = Foreground.default, bg = Shade.default }
    hl.TSInclude = { fg = c.pink, bg = Shade.default }
    hl.TSInterface = { link = 'TSType' }
    hl.TSKeyword = { fg = c.red, bg = Shade.default }
    hl.TSKeywordFunction = { fg = c.pink, italic = true, bg = Shade.default }
    hl.TSKeywordOperator = { fg = c.red2, bg = Shade.default }
    hl.TSKeywordReturn = { link = 'TSKeyword', bg = Shade.default }
    hl.TSLabel = { fg = c.cyan, bg = Shade.default }
    hl.TSNamespace = { fg = c.orange2, bg = Shade.default }
    hl.TSNote = { fg = c.green, bold = true, bg = Shade.default }
    hl.TSOperator = { link = 'Operator' }
    hl.TSProperty = { fg = c.blue1, bg = Shade.default }
    hl.TSStrong = { bold = true }
    hl.TSSymbol = { fg = c.cyan, bg = Shade.default }
    hl.TSTag = { link = 'Tag' }
    hl.TSTagAttribute = { fg = c.pink, bg = Shade.default }
    hl.TSTagDelimiter = { fg = c.cyan, bg = Shade.emphasis }
    hl.TSText = { fg = Foreground.default, bg = Shade.default }

    hl.TSTextReference = { fg = Foreground.default, underdotted = false }

    hl.TSTitle = { fg = Foreground.default, bg = Shade.default }
    hl.TSTodo = { link = 'Todo' }
    hl.TSType = { link = 'Type' }
    hl.TSTypeBuiltin = { fg = c.blue0, italic = true, bg = Shade.default }
    hl.TSTypeQualifier = { fg = c.red, bg = Shade.default }
    hl.TSURI = { fg = c.blue1, underdotted = true, bg = Shade.default }
    hl.TSUnderline = { underline = true }
    hl.TSVariable = { fg = Foreground.default, bg = Shade.default }
    hl.TSVariableBuiltin = { fg = c.red, italic = true }
    hl.TSWarning = { fg = c.orange2, bold = true, bg = Shade.default }
    hl.TSLiteral = { fg = c.green, italic = true, bg = Shade.default }
    hl.htmlTagName = { link = 'Tag' }
    hl.gitCommitSelectedFile = { italic = true }
    hl.gitCommitSummary = { bold = true }
    hl.gitCommitTrailerToken = { fg = c.pink, italic = true }
    hl.healthHelp = { fg = c.yellow, bg = Shade.default }
    hl.healthSuccess = { fg = c.green, bg = Shade.default }
    hl.luaTable = { link = 'TSPunctBracket' }

    hl.markdownRule = { fg = c.red, bg = Shade.default }
    hl.markdownLinkText = { fg = Foreground.default, bg = Shade.default }
    hl.markdownUrl = { fg = c.blue0, underline = true, bg = Shade.default }
    hl.markdownLinkDelimiter = { fg = c.cyan, bg = Shade.emphasis }
    hl.markdownH1Delimiter = { fg = c.red2, bg = Shade.emphasis, bold = false }
    hl.markdownH2Delimiter = { fg = c.red2, bg = Shade.emphasis, bold = false }
    -- hl.markdownH3Delimiter = { fg = c.orange2, bg = Shade.emphasis, bold = false }
    -- hl.markdownH4Delimiter = { fg = c.orange2, bg = Shade.emphasis, bold = false }
    -- hl.markdownH5Delimiter = { fg = c.orange2, bg = Shade.emphasis, bold = false }
    -- hl.markdownH6Delimiter = { fg = c.orange2, bg = Shade.emphasis, bold = false }
    hl.markdownCode = { bg = c.gray5 }
    hl.markdownCodeDelimiter = { fg = c.blue0, bg = Shade.emphasis }
    hl.markdownListMarker = { fg = c.yellow, bg = Shade.default }

    hl.qfFileName = { fg = c.cyan, bg = Shade.default }
    hl.qfLineNr = { bold = true }
    hl.tmuxCommands = { fg = c.pink }
    hl.tmuxFlags = { fg = c.orange2 }
    hl.tmuxFormatString = { fg = c.cyan }
    hl.javaScriptReserved = { fg = c.red }
    hl.fennelTSFuncMacro = { link = 'TSKeywordFunction' }
    hl.fennelTSField = { link = 'TSField' }
    hl.FennelStringDelimiter = { fg = c.cyan }
    hl.FennelParen = { link = 'TSPunctBracket' }
    hl.FennelSpecialForm = { fg = c.pink, italic = true }
    hl.FennelKeyword = { link = 'TSKeyword' }
    hl.FennelTable = { link = 'TSConstructor' }
    hl.tomlproperty = { fg = c.cyan, bg = Shade.default }
    hl.yamlfield = { fg = c.cyan, bg = Shade.default }
    hl.jsonKeyword = { fg = c.cyan, bg = Shade.default }

    hl.helpHyperTextEntry = { link = 'TSURI' }
    hl.helpSectionDelim = { fg = c.red, bold = true, bg = Shade.default }
    hl.helpHyperTextJump = { fg = c.blue0, underdotted = true, bg = Shade.default }
    hl.helpHeader = hl.Title
    hl.helpExample = { fg = c.green, bg = Shade.default }
    hl.helpURL = { fg = c.blue0, underline = true, bg = Shade.default }
    hl.helpCommand = { bg = c.gray5 }

    hl.rainbowcol1 = { fg = c.gray7, bg = Shade.emphasis }
    hl.rainbowcol2 = { fg = c.pink, bg = Shade.emphasis }
    hl.rainbowcol3 = { fg = c.green, bg = Shade.emphasis }
    hl.rainbowcol4 = { fg = c.red, bg = Shade.emphasis }
    hl.rainbowcol5 = { fg = c.cyan, bg = Shade.emphasis }
    hl.rainbowcol6 = { fg = c.yellow, bg = Shade.emphasis }
    hl.rainbowcol7 = { fg = c.orange1, bg = Shade.emphasis }

    hl.IndentBlanklineContextChar = { fg = c.gray6, bg = 'NONE' }
    hl.IndentBlanklineContextStart = { sp = c.gray6, underdotted = true }
    hl.IndentBlanklineSpaceCharBlankline = { link = 'NonText' }
    hl.IndentBlanklineSpaceChar = { link = 'NonText' }

    hl.CmpItemAbbrDeprecated = { strikethrough = true }
    hl.CmpItemKindStruct = { fg = c.orange2 }
    hl.CmpItemKindFunction = { fg = c.blue0 }
    hl.CmpItemKindText = { fg = c.gray7 }
    hl.CmpItemKindClass = { fg = c.orange2 }
    hl.CmpItemKindValue = { fg = c.red2 }
    hl.CmpItemKindEnum = { fg = c.orange2 }
    hl.CmpItemKindInterface = { fg = c.orange2 }
    hl.CmpItemKindMethod = { fg = c.cyan }
    hl.CmpItemKindUnit = { fg = c.red }
    hl.CmpItemKindConstant = { fg = c.gray9 }
    hl.CmpItemKindField = { fg = c.blue0 }
    hl.CmpItemKindModule = { fg = c.orange2 }
    hl.CmpItemKindKeyword = { fg = c.pink }
    hl.CmpItemKindEnumMember = { fg = c.blue1 }
    hl.CmpItemKindProperty = { fg = c.blue0 }
    hl.CmpItemKindOperator = { fg = c.red2 }
    hl.CmpItemKindReference = { fg = c.gray7 }
    hl.CmpItemKindSnippet = { fg = c.gray9 }
    hl.CmpItemKindTypeParameter = { fg = c.orange2 }
    hl.CmpItemKindVariable = { fg = c.gray7 }

    hl.Sneak = { fg = c.gray0, bg = c.orange2 }
    hl.SneakLabel = { fg = c.gray0, bg = c.orange2 }

    hl.GitSignsDelete = { fg = c.red, bold = true }
    hl.GitSignsChange = { fg = c.yellow, bold = true }
    hl.GitSignsAdd = { fg = c.green, bold = true }

    hl.packerHash = { fg = c.red }
    hl.packerString = { fg = c.green }
    hl.packerStatusSuccess = { fg = c.green }

    hl.LspReferenceText = { bg = Background.emphasis }
    hl.LspReferenceRead = { bg = Background.emphasis }
    hl.LspReferenceWrite = { bg = Background.emphasis }

    hl.TelescopeBorder = { fg = Foreground.surface }
    hl.TelescopeTitle = { fg = Foreground.default, bold = true }
    hl.TelescopePromptCounter = { fg = Foreground.default }
    hl.TelescopeMatching = { bg = Background.default }
    hl.TelescopeSelectionCaret = { fg = Foreground.default }
    hl.TelescopeSelection = { bg = Background.muted }

    hl.FloatTitle = { fg = Foreground.muted }
    hl.FocusedSymbol = { bg = Background.muted }
    hl.TroubleIndent = { bg = Background.default }
    hl.TroubleLocation = { bold = true }

    hl.NvimTreeNormal = { fg = Foreground.default, bg = Background.emphasis }
    hl.NvimTreeRootFolder = { fg = Foreground.default, bg = Background.emphasis }
    hl.NvimTreeIndentMarker = { fg = Foreground.default, bg = Background.emphasis }
    hl.NvimTreeOpenedFolderName = { underdotted = true }
    hl.NvimTreeFolderName = { fg = Foreground.default, bg = Shade.default }
    hl.NvimTreeEmptyFolderName = { link = 'Comment' }
    hl.NvimTreeFolderIcon = { fg = Foreground.muted }
    hl.NvimTreeExecFile = { fg = c.green, bold = true, bg = Shade.default }
    hl.NvimTreeFileDeleted = { link = 'Comment' }
    hl.NvimTreeFileNew = { fg = Background.emphasis, bg = Shade.default }
    hl.NvimTreeSpecialFile = { fg = Foreground.default, bg = Shade.default }

    hl.NvimTreeGitDirty = { fg = c.red, bg = Shade.default }
    hl.NvimTreeGitStaged = { fg = c.green, bg = Shade.default }
    hl.NvimTreeGitRenamed = { fg = c.orange2, bg = Shade.default }
    hl.NvimTreeGitDeleted = { fg = c.red, bg = Shade.default }
    hl.NvimTreeSymlink = { fg = c.cyan, bg = Shade.default }

    hl.NotifyERRORBorder = { fg = hl.DiagnosticError.fg }
    hl.NotifyWARNBorder = { fg = hl.DiagnosticWarn.fg }
    hl.NotifyINFOBorder = { fg = hl.DiagnosticInfo.fg }
    hl.NotifyDEBUGBorder = { fg = Debug, bg = Shade.default }
    hl.NotifyTRACEBorder = { fg = Trace, bg = Shade.default }
    hl.NotifyERRORIcon = { fg = hl.DiagnosticError.fg }
    hl.NotifyWARNIcon = { fg = hl.DiagnosticWarn.fg }
    hl.NotifyINFOIcon = { fg = hl.DiagnosticInfo.fg }
    hl.NotifyDEBUGIcon = { fg = Debug, bg = Shade.default }
    hl.NotifyTRACEIcon = { fg = Trace, bg = Shade.default }
    hl.NotifyERRORTitle = { fg = hl.DiagnosticError.fg, bold = true }
    hl.NotifyWARNTitle = { fg = hl.DiagnosticWarn.fg, bold = true }
    hl.NotifyINFOTitle = { fg = hl.DiagnosticInfo.fg, bold = true }
    hl.NotifyDEBUGTitle = { fg = Debug, bold = true, bg = Shade.default }
    hl.NotifyTRACETitle = { fg = Trace, bold = true, bg = Shade.default }
    hl.NotifyERRORBody = { fg = Foreground.default, bg = Shade.default }
    hl.NotifyWARNBody = { fg = Foreground.default, bg = Shade.default }
    hl.NotifyINFOBody = { fg = Foreground.default, bg = Shade.default }
    hl.NotifyDEBUGBody = { fg = Foreground.default, bg = Shade.default }
    hl.NotifyTRACEBody = { fg = Foreground.default, bg = Shade.default }

    hl.DevIconGitAttributes = { fg = c.cyan }
    hl.DevIconGitCommit = { fg = c.red }
    hl.DevIconGitConfig = { fg = c.cyan }
    hl.DevIconGitIgnore = { fg = c.red }
    hl.DevIconGitModules = { fg = c.cyan }
    hl.DevIconDropbox = { fg = c.blue0 }
    hl.DevIconToml = { fg = c.cyan }
    hl.DevIconYaml = { link = 'DevIconToml' }
    hl.DevIconJson = { fg = c.orange2 }
    hl.DevIconYml = { link = 'DevIconToml' }
    hl.DevIconMd = { fg = c.gray9 }
    hl.DevIconGo = { fg = c.blue0 }
    hl.DevIconTs = { fg = c.blue0 }
    hl.DevIconTsx = { fg = c.blue0 }
    hl.DevIconDsStore = { fg = c.gray6 }
    hl.DevIconDockerfile = { fg = c.blue0 }
    hl.DevIconScheme = { fg = c.gray9 }

    hl.LspNamespace = { link = 'TSNamespace' }
    hl.LspType = { link = 'TSType' }
    hl.LspClass = { link = 'TSType' }
    hl.LspEnum = { link = 'TSType' }
    hl.LspInterface = { link = 'TSType' }
    hl.LspStruct = { link = 'TSType' }
    hl.LspTypeParameter = { link = 'TSType' }
    hl.LspParameter = { link = 'TSParameter' }
    hl.LspVariable = { link = 'TSVariable' }
    hl.LspProperty = { link = 'TSProperty' }
    hl.LspEnumMember = { link = 'TSField' }
    -- hl.LspEvent   = {}
    hl.LspFunction = { link = 'TSFunctionCall' }
    hl.LspMethod = hl.TSMethod
    hl.LspMacro = { link = 'Macro' }
    hl.LspKeyword = { fg = c.red2 }
    -- LspModifier   = {}
    hl.LspComment = { link = 'TSComment' }
    hl.LspString = { link = 'TSString' }
    hl.LspNumber = { link = 'TSNumber' }
    hl.LspRegexp = { link = 'TSStringRegex' }
    -- LspDeclaration = { link = 'TSType' }
    -- LspDefinition  = {}
    -- hl.LspOperator = { link = 'TSOperator' }
    hl.LspReadonly = { fg = 'NONE', bg = 'NONE', italic = true }
    hl.LspStatic = { fg = 'NONE', bg = 'NONE', italic = true }
    hl.LspDeprecated = { strikethrough = true }
    -- LspAbstract = {}
    -- LspAsync = { bold = true }
    -- LspModification  = {}
    -- LspDocumentation = {}
    hl.LspDefaultLibrary = { italic = true }
    --- FzfLua
    hl.FzfLuaNormal = { fg = Foreground.default, bg = Background.default }
    hl.FzfLuaBorder = { fg = Foreground.surface, bg = Background.default }
    hl.FzfLuaCursor = { fg = Foreground.default, bg = Background.default }
    hl.FzfLuaSearch = hl.Search
    hl.FzfLuaTitle = { fg = Foreground.default, bold = true }
    hl.FzfLuaCursorLine = hl.CursorLine
    hl.FzfLuaCursorLineNr = hl.CursorLineNr

    return hl

end

return { Theme = Theme }
