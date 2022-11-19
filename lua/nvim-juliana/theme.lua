local C = {
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

local hl = {}

hl.Normal      = { fg = C.Foreground.default, bg = C.Background.default }
hl.Visual      = { bg = C.Background.muted }
hl.NormalFloat = { bg = C.Background.emphasis }
hl.FloatBorder = { fg = C.Foreground.surface, bg = C.Background.default }

hl.Pmenu      = { bg = C.Background.emphasis }
hl.PmenuSel   = { bg = C.Background.muted, fg = C.Foreground.emphasis, bold = false }
hl.PmenuSbar  = { bg = hl.Pmenu.bg, fg = hl.PmenuSel.bg }
hl.PmenuThumb = { bg = hl.PmenuSel.bg }

hl.NonText = { fg = C.Foreground.surface }
hl.Conceal = { fg = C.Foreground.muted }

hl.CursorLine   = { bg = C.Background.muted }
hl.CursorColumn = { link = 'CursorLine' }
hl.ColorColumn  = { link = 'CursorColumn' }
hl.SignColumn   = { fg = C.Foreground.default, bg = C.Background.default }

hl.LineNr       = { bg = C.Background.muted, fg = C.Foreground.emphasis }
hl.LineNrAbove  = { fg = C.Foreground.muted }
hl.LineNrBelow  = { fg = C.Foreground.muted }
hl.CursorLineNr = { link = 'LineNr' }

hl.DiffAdd    = { sp = C.Colors.Info, underline = true }
hl.DiffChange = { sp = C.Colors.Error, underline = true }
hl.DiffDelete = { fg = C.Foreground.muted }
hl.DiffText   = { italic = true }

hl.Directory   = { fg = C.Colors.Hint }
hl.EndOfBuffer = { fg = C.Foreground.surface }

hl.Error     = { fg = C.Colors.Danger, bg = C.Shade.default }
hl.ErrorMsg  = { fg = C.Colors.Error, bg = C.Shade.default }
hl.Exception = { fg = C.Colors.Trace, bg = C.Shade.default }

hl.Folded     = { fg = C.Foreground.muted, bg = C.Shade.default }
hl.FoldColumn = { link = 'Comment' }

hl.ModeMsg = { fg = C.Foreground.default }
hl.MoreMsg = { fg = C.Foreground.default, bold = true }

hl.Question = { link = 'MoreMsg' }

hl.Search     = { fg = C.Background.emphasis, bg = C.Colors.Caution }
hl.IncSearch  = { link = 'Search' }
hl.Substitute = { bg = C.Background.muted }

hl.SpellBad   = { sp = C.Colors.Error, undercurl = true }
hl.SpellCap   = { sp = C.Colors.Caution, undercurl = true }
hl.SpellLocal = { sp = C.Colors.Hint, undercurl = true }
hl.SpellRare  = { sp = C.Colors.Trace, undercurl = true }

hl.StatusLine   = { fg = C.Foreground.default, bg = C.Background.muted }
hl.StatusLineNC = { fg = C.Foreground.default, bg = C.Background.emphasis }

hl.TabLine     = { fg = C.Foreground.default, bg = C.Background.muted }
hl.TabLineFill = { fg = C.Foreground.default, bg = C.Background.muted }
hl.TabLineSel  = { fg = C.Foreground.default, bg = C.Background.default }

hl.WarningMsg   = { link = 'ErrorMsg' }
hl.WildMenu     = { link = 'Pmenu' }
hl.Winseparator = { fg = C.Foreground.surface }
hl.VertSplit    = { link = 'Winseparator' }
hl.MatchParen   = { bold = true }

hl.DiagnosticError            = { fg = C.Colors.Error, bg = 'NONE' }
hl.DiagnosticSignError        = { fg = hl.DiagnosticError.fg, bold = true, bg = 'NONE' }
hl.DiagnosticUnderlineError   = { sp = hl.DiagnosticError.fg, undercurl = true, bg = 'NONE' }
hl.DiagnosticVirtualTextError = { fg = hl.DiagnosticError.fg, bg = 'NONE' }
hl.DiagnosticHint             = { fg = C.Colors.Hint, bg = 'NONE' }
hl.DiagnosticSignHint         = { fg = hl.DiagnosticHint.fg, bold = true, bg = 'NONE' }
hl.DiagnosticUnderlineHint    = { sp = hl.DiagnosticHint.fg, undercurl = true, bg = 'NONE' }
hl.DiagnosticVirtualTextHint  = { fg = hl.DiagnosticHint.fg, bg = 'NONE' }
hl.DiagnosticInfo             = { fg = C.Colors.Info, bg = 'NONE' }
hl.DiagnosticSignInfo         = { fg = hl.DiagnosticInfo.fg, bold = true, bg = 'NONE' }
hl.DiagnosticUnderlineInfo    = { sp = hl.DiagnosticInfo.fg, undercurl = true, bg = 'NONE' }
hl.DiagnosticVirtualTextInfo  = { fg = hl.DiagnosticInfo.fg, bg = 'NONE' }
hl.DiagnosticWarn             = { fg = C.Colors.Caution, bg = 'NONE' }
hl.DiagnosticSignWarn         = { fg = hl.DiagnosticWarn.fg, bold = true, bg = 'NONE' }
hl.DiagnosticUnderlineWarn    = { sp = hl.DiagnosticWarn.fg, undercurl = true, bg = 'NONE' }
hl.DiagnosticVirtualTextWarn  = { fg = hl.DiagnosticWarn.fg, bg = 'NONE' }


hl.Boolean        = { fg = C.Colors.Error, italic = true, }
hl.Character      = { fg = C.Colors.Info }
hl.Comment        = { fg = C.Foreground.muted }
hl.SpecialComment = { link = 'Comment' }
hl.Conditional    = { fg = C.Colors.Trace }
hl.Constant       = { fg = C.Foreground.emphasis }
hl.Define         = { fg = C.Colors.Trace, italic = true, }
hl.Delimiter      = { fg = C.Foreground.muted }
hl.Float          = { fg = C.Colors.Important }
hl.Function       = { fg = C.Colors.Hint }
hl.Identifier     = { fg = C.Foreground.default }
hl.Include        = { fg = C.Colors.Error }
hl.Keyword        = { fg = C.Colors.Trace, italic = true }
hl.Label          = { fg = C.Colors.Trace }
hl.Macro          = { fg = C.Colors.Hint }
hl.Number         = { fg = C.Colors.Important }
hl.Operator       = { fg = C.Colors.Danger }
hl.PreCondit      = { fg = C.Colors.Error }
hl.PreProc        = { fg = C.Colors.Hint }
hl.Repeat         = { fg = C.Colors.Trace }
hl.Special        = { fg = C.Colors.Hint }
hl.SpecialChar    = { fg = C.Colors.Hint }
hl.SpecialKey     = { fg = C.Colors.Hint }
hl.Statement      = { fg = C.Colors.Trace }
hl.StorageClass   = { fg = C.Colors.Error }
hl.String         = { fg = C.Colors.Info }
hl.Struct         = { fg = C.Colors.Error }
hl.Structure      = { fg = C.Colors.Caution }
hl.Tag            = { fg = C.Colors.Error }
hl.Title          = { fg = C.Foreground.default, bold = true }
hl.Todo           = { fg = C.Colors.Note, bold = true }
hl.Type           = { fg = C.Colors.Caution }
hl.Typedef        = { fg = C.Colors.Error }
hl.Underlined     = { underdotted = true }
hl.Whitespace     = { fg = C.Foreground.surface }

hl['@boolean']           = { link = 'Boolean' }
hl['@character']         = { fg = C.Colors.Info }
hl['@character.special'] = { link = 'SpecialChar' }

hl['@comment'] = { fg = C.Foreground.muted }

hl['@constant']                = { link = 'Constant' }
hl['@constant.builtin']        = { fg = C.Colors.Error, italic = true }
hl['@constant.builtin.python'] = { fg = C.Colors.Note, italic = true }
hl['@constant.macro']          = { fg = C.Colors.Trace, italic = true }

hl['@constructor.lua'] = { fg = C.Foreground.emphasis }
hl['@enum']            = { fg = C.Colors.Caution }

hl['@field']      = { fg = C.Colors.Accent }
hl['@field.toml'] = { fg = C.Colors.Error }
hl['@field.yaml'] = { fg = C.Colors.Hint }

hl['@function']                  = { link = 'Function' }
hl['@function.builtin']          = { fg = C.Colors.Note, italic = true }
hl['@function.call']             = { fg = C.Colors.Note }
hl['@function.macro']            = { fg = C.Colors.Note }
hl['@function.macro.commonlisp'] = { fg = C.Colors.Error }

hl['@preproc'] = { fg = C.Colors.Hint }
hl['@interface'] = { fg = C.Colors.Caution }

hl['@conditional']      = { fg = C.Colors.Trace }
hl['@include']          = { fg = C.Colors.Trace }
hl['@keyword']          = { fg = C.Colors.Error }
hl['@keyword.css']      = { fg = C.Colors.Trace, italic = true }
hl['@keyword.function'] = { fg = C.Colors.Trace, italic = true }
hl['@keyword.operator'] = { fg = C.Colors.Danger }
hl['@keyword.return']   = { fg = C.Colors.Trace }
hl['@keyword.rust']     = { fg = C.Colors.Trace }

hl['@label']      = { fg = C.Colors.Hint }
hl['@label.json'] = { fg = C.Colors.Hint }
hl['@label.toml'] = { fg = C.Colors.Hint }

hl['@method']      = { fg = C.Colors.Hint }
hl['@method.call'] = { fg = C.Colors.Note }

hl['@namespace'] = { fg = C.Colors.Caution }

hl['@float']       = { link = 'Float' }
hl['@number']      = { link = 'Number' }
hl['@number.bash'] = { fg = C.Colors.Caution }

hl['@operator']            = { link = 'Operator' }
hl['@parameter']           = { fg = C.Foreground.default }
hl['@parameter.bash']      = { fg = C.Foreground.default }
hl['@parameter.reference'] = { fg = C.Foreground.default }

hl['@property']      = { fg = C.Colors.Accent }
hl['@property.toml'] = { fg = C.Colors.Hint }

hl['@punctuation.bracket']          = { fg = C.Foreground.emphasis }
hl['@punctuation.delimiter']        = { link = 'Delimiter' }
hl['@punctuation.delimiter.python'] = { fg = C.Foreground.emphasis }
hl['@punctuation.delimiter.yaml']   = { fg = C.Colors.Note }
hl['@punctuation.special']          = { fg = C.Colors.Hint }
hl['@punctuation.special.markdown'] = { fg = C.Colors.Danger, bold = false }

hl['@repeat']        = { fg = C.Colors.Trace }
hl['@repeat.python'] = { fg = C.Colors.Error }

hl['@string']         = { fg = C.Colors.Info }
hl['@string.escape']  = { link = 'SpecialChar' }
hl['@string.regex']   = { fg = C.Colors.Hint }
hl['@string.special'] = { link = 'SpecialChar' }

hl['@symbol'] = { fg = C.Colors.Hint }

hl['@tag']                           = { link = 'Tag' }
hl['@tag.attribute']                 = { fg = C.Colors.Trace }
hl['@tag.delimiter']                 = { fg = C.Colors.Hint }
hl['@tag.delimiter.markdown']        = { fg = C.Colors.Note }
hl['@tag.delimiter.markdown_inline'] = { fg = C.Colors.Note }

hl['@text']           = { fg = C.Foreground.default }
hl['@text.emphasis']  = { italic = true, bold = true }
hl['@text.literal']   = { fg = C.Colors.Info, italic = true }
hl['@text.reference'] = { fg = C.Colors.Hint, underdotted = false }
hl['@text.strong']    = { bold = true }
hl['@text.title']     = { fg = C.Foreground.default, bold = true }
hl['@text.underline'] = { underline = true }
hl['@text.uri']       = { fg = C.Colors.Note, underdotted = true }

hl['@type']           = { fg = C.Colors.Caution }
hl['@type.builtin']   = { fg = C.Colors.Note, italic = true }
hl['@type.qualifier'] = { fg = C.Colors.Error }

hl['@variable']                    = { fg = C.Foreground.default }
hl['@variable.builtin']            = { fg = C.Colors.Error, italic = true }
hl['@variable.builtin.clojure']    = { fg = C.Foreground.emphasis }
hl['@variable.builtin.javascript'] = { fg = C.Colors.Warn, italic = true }


hl.gitCommitSelectedFile = { italic = true }
hl.gitCommitSummary      = { bold = true }
hl.gitCommitTrailerToken = { fg = C.Colors.Trace, italic = true }
hl.gitconfigVariable     = { link = '@field' }

hl.healthHelp    = { fg = C.Colors.Important }
hl.healthSuccess = { fg = C.Colors.Info }

hl.markdownRule          = { fg = C.Colors.Error }
hl.markdownLinkText      = { fg = C.Foreground.default }
hl.markdownUrl           = { fg = C.Colors.Note, underline = true }
hl.markdownLinkDelimiter = { fg = C.Colors.Hint }
hl.markdownH1Delimiter   = { fg = C.Colors.Danger, bold = false }
hl.markdownH2Delimiter   = { fg = C.Colors.Danger, bold = false }
hl.markdownCode          = { bg = C.Background.muted }
hl.markdownCodeDelimiter = { fg = C.Colors.Note }
hl.markdownListMarker    = { fg = C.Colors.Important }

hl.htmlTagName = { link = 'Tag' }

hl.qfFileName = { fg = C.Colors.Hint }
hl.qfLineNr   = { bold = true }

--- tmux
hl.tmuxCommands     = { fg = C.Colors.Trace }
hl.tmuxFlags        = { fg = C.Colors.Caution }
hl.tmuxFormatString = { fg = C.Colors.Hint }

hl.javaScriptReserved = { fg = C.Colors.Error }

--- Fennel
hl.FennelStringDelimiter = { fg = C.Colors.Hint }
hl.FennelParen           = { fg = C.Foreground.emphasis }
hl.FennelSpecialForm     = { fg = C.Colors.Trace, italic = true }
hl.FennelKeyword         = { fg = C.Colors.Error }

--- Help
hl.helpHyperTextEntry = { link = 'TSURI' }
hl.helpSectionDelim   = { fg = C.Colors.Error, bold = true }
hl.helpHyperTextJump  = { fg = C.Colors.Note, underdotted = true }
hl.helpHeader         = { link = 'Title' }
hl.helpExample        = { fg = C.Colors.Info }
hl.helpURL            = { fg = C.Colors.Note, underline = true }
hl.helpCommand        = { bg = C.Foreground.surface }

--- rainbow parenthesis
hl.rainbowcol1 = { fg = C.Foreground.default }
hl.rainbowcol2 = { fg = C.Colors.Trace }
hl.rainbowcol3 = { fg = C.Colors.Info }
hl.rainbowcol4 = { fg = C.Colors.Error }
hl.rainbowcol5 = { fg = C.Colors.Hint }
hl.rainbowcol6 = { fg = C.Colors.Important }
hl.rainbowcol7 = { fg = C.Colors.Warn }

hl.IndentBlanklineContextChar = { fg = C.Foreground.muted, bg = 'NONE' }
hl.IndentBlanklineContextStart = { sp = C.Foreground.muted, underdotted = true }
hl.IndentBlanklineSpaceCharBlankline = { link = 'NonText' }
hl.IndentBlanklineSpaceChar = { link = 'NonText' }

hl.CmpItemAbbrDeprecated    = { strikethrough = true }
hl.CmpItemKindStruct        = { fg = C.Colors.Caution }
hl.CmpItemKindFunction      = { fg = C.Colors.Note }
hl.CmpItemKindText          = { fg = C.Foreground.default }
hl.CmpItemKindClass         = { fg = C.Colors.Caution }
hl.CmpItemKindValue         = { fg = C.Colors.Danger }
hl.CmpItemKindEnum          = { fg = C.Colors.Caution }
hl.CmpItemKindInterface     = { fg = C.Colors.Caution }
hl.CmpItemKindMethod        = { fg = C.Colors.Hint }
hl.CmpItemKindUnit          = { fg = C.Colors.Error }
hl.CmpItemKindConstant      = { fg = C.Foreground.emphasis }
hl.CmpItemKindField         = { fg = C.Colors.Note }
hl.CmpItemKindModule        = { fg = C.Colors.Caution }
hl.CmpItemKindKeyword       = { fg = C.Colors.Trace }
hl.CmpItemKindEnumMember    = { fg = C.Colors.Accent }
hl.CmpItemKindProperty      = { fg = C.Colors.Note }
hl.CmpItemKindOperator      = { fg = C.Colors.Danger }
hl.CmpItemKindReference     = { fg = C.Foreground.default }
hl.CmpItemKindSnippet       = { fg = C.Foreground.emphasis }
hl.CmpItemKindTypeParameter = { fg = C.Colors.Caution }
hl.CmpItemKindVariable      = { fg = C.Foreground.default }

hl.LeapMatch          = { fg = C.Background.emphasis, bg = C.Colors.Danger, bold = true }
hl.LeapLabelPrimary   = { fg = C.Background.emphasis, bg = C.Colors.Caution, bold = true }
hl.LeapLabelSecondary = { fg = C.Background.emphasis, bg = C.Colors.Warn, bold = true }
hl.LeapLabelSelected  = { fg = C.Background.emphasis, bg = C.Colors.Important, bold = true }
hl.LeapBackdrop       = { fg = 'NONE', bg = C.Background.emphasis }

hl.Sneak      = { fg = C.Background.emphasis, bg = C.Colors.Caution, bold = true }
hl.SneakLabel = { fg = C.Background.emphasis, bg = C.Colors.Caution, bold = true }

hl.GitSignsDelete = { fg = C.Colors.Error, bold = true }
hl.GitSignsChange = { fg = C.Colors.Important, bold = true }
hl.GitSignsAdd    = { fg = C.Colors.Info, bold = true }

hl.packerHash          = { fg = C.Colors.Error }
hl.packerString        = { fg = C.Colors.Info }
hl.packerStatusSuccess = { fg = C.Colors.Info }

hl.LspReferenceText  = { bg = C.Background.emphasis }
hl.LspReferenceRead  = { bg = C.Background.emphasis }
hl.LspReferenceWrite = { bg = C.Background.emphasis }

hl.TelescopeBorder         = { fg = C.Foreground.surface }
hl.TelescopeTitle          = { fg = C.Foreground.default, bold = true }
hl.TelescopePromptCounter  = { fg = C.Foreground.default }
hl.TelescopeMatching       = { bg = C.Background.default }
hl.TelescopeSelectionCaret = { fg = C.Foreground.default }
hl.TelescopeSelection      = { bg = C.Background.muted }

hl.FloatTitle = { fg = C.Foreground.muted }

hl.FocusedSymbol   = { bg = C.Background.muted }
hl.TroubleIndent   = { bg = C.Background.default }
hl.TroubleLocation = { bold = true }

hl.NvimTreeNormal           = { fg = C.Foreground.default, bg = C.Shade.default }
hl.NvimTreeRootFolder       = { fg = C.Foreground.default, bg = C.Shade.default }
hl.NvimTreeIndentMarker     = { fg = C.Foreground.muted, bg = C.Shade.default }
hl.NvimTreeOpenedFolderName = { underdotted = true }
hl.NvimTreeOpenedFile       = { bg = C.Background.muted }
hl.NvimTreeFolderName       = { fg = C.Foreground.default, bg = C.Shade.default }
hl.NvimTreeEmptyFolderName  = { link = 'Comment' }
hl.NvimTreeFolderIcon       = { fg = C.Foreground.muted }
hl.NvimTreeExecFile         = { fg = C.Colors.Info, bold = true, bg = C.Shade.default }
hl.NvimTreeFileDeleted      = { link = 'Comment' }
hl.NvimTreeFileNew          = { fg = C.Background.emphasis, bg = C.Shade.default }
hl.NvimTreeSpecialFile      = { fg = C.Foreground.default, bg = C.Shade.default }
hl.NvimTreeGitDirty         = { fg = C.Colors.Error, bg = C.Shade.default }
hl.NvimTreeGitStaged        = { fg = C.Colors.Info, bg = C.Shade.default }
hl.NvimTreeGitRenamed       = { fg = C.Colors.Caution, bg = C.Shade.default }
hl.NvimTreeGitDeleted       = { fg = C.Colors.Error, bg = C.Shade.default }
hl.NvimTreeSymlink          = { fg = C.Colors.Hint, bg = C.Shade.default }

hl.NotifyERRORBorder = { fg = hl.DiagnosticError.fg }
hl.NotifyWARNBorder  = { fg = hl.DiagnosticWarn.fg }
hl.NotifyINFOBorder  = { fg = hl.DiagnosticInfo.fg }
hl.NotifyDEBUGBorder = { fg = C.Colors.Danger }
hl.NotifyTRACEBorder = { fg = C.Colors.Trace }
hl.NotifyERRORIcon   = { fg = hl.DiagnosticError.fg }
hl.NotifyWARNIcon    = { fg = hl.DiagnosticWarn.fg }
hl.NotifyINFOIcon    = { fg = hl.DiagnosticInfo.fg }
hl.NotifyDEBUGIcon   = { fg = C.Colors.Danger }
hl.NotifyTRACEIcon   = { fg = C.Colors.Trace }
hl.NotifyERRORTitle  = { fg = hl.DiagnosticError.fg, bold = true }
hl.NotifyWARNTitle   = { fg = hl.DiagnosticWarn.fg, bold = true }
hl.NotifyINFOTitle   = { fg = hl.DiagnosticInfo.fg, bold = true }
hl.NotifyDEBUGTitle  = { fg = C.Colors.Danger, bold = true }
hl.NotifyTRACETitle  = { fg = C.Colors.Trace, bold = true }
hl.NotifyERRORBody   = { fg = C.Foreground.default }
hl.NotifyWARNBody    = { fg = C.Foreground.default }
hl.NotifyINFOBody    = { fg = C.Foreground.default }
hl.NotifyDEBUGBody   = { fg = C.Foreground.default }
hl.NotifyTRACEBody   = { fg = C.Foreground.default }

hl.DevIconGitAttributes = { fg = C.Colors.Hint }
hl.DevIconGitCommit     = { fg = C.Colors.Error }
hl.DevIconGitConfig     = { fg = C.Colors.Hint }
hl.DevIconGitIgnore     = { fg = C.Colors.Error }
hl.DevIconGitModules    = { fg = C.Colors.Hint }
hl.DevIconDropbox       = { fg = C.Colors.Note }
hl.DevIconToml          = { fg = C.Colors.Hint }
hl.DevIconYaml          = { link = 'DevIconToml' }
hl.DevIconJson          = { fg = C.Colors.Caution }
hl.DevIconYml           = { link = 'DevIconToml' }
hl.DevIconMd            = { fg = C.Foreground.emphasis }
hl.DevIconGo            = { fg = C.Colors.Note }
hl.DevIconTs            = { fg = C.Colors.Note }
hl.DevIconTsx           = { fg = C.Colors.Note }
hl.DevIconDsStore       = { fg = C.Foreground.muted }
hl.DevIconDockerfile    = { fg = C.Colors.Note }
hl.DevIconScheme        = { fg = C.Foreground.emphasis }

--- TODO: Finish associating
hl.LspClass         = { link = '@type' }
hl.LspEnum          = { link = '@type' }
hl.LspEnumMember    = { link = '@field' }
hl.LspFunction      = { fg = C.Colors.Hint }
hl.LspInterface     = { link = '@type' }
hl.LspKeyword       = { fg = C.Colors.Danger }
hl.LspMacro         = { link = 'Macro' }
hl.LspMethod        = { fg = C.Colors.Hint }
hl.LspNamespace     = { link = '@namespace' }
hl.LspNumber        = { link = 'Number' }
hl.LspParameter     = { link = '@parameter' }
hl.LspProperty      = { link = '@property' }
hl.LspString        = { fg = C.Colors.Info }
hl.LspStruct        = { link = '@type' }
hl.LspType          = { link = '@type' }
hl.LspTypeParameter = { link = '@type' }
-- hl.LspAbstract = {}
-- hl.LspAsync = { bold = true }
-- hl.LspDeclaration = { link = 'TSType' }
-- hl.LspDefinition  = {}
-- hl.LspDocumentation = {}
-- hl.LspModification  = {}
-- hl.LspModifier   = {}
-- hl.LspComment = { fg = v.Foreground.muted, bg = v.Shade.default }
-- hl.LspDefaultLibrary = { link = 'TSNamespace' }
-- hl.LspDeprecated = { strikethrough = true }
-- hl.LspEvent   = {}
-- hl.LspOperator = { link = 'TSOperator' }
-- hl.LspReadonly = { italic = true }
-- hl.LspRegexp = { fg = v.Colors.Hint, bg = v.Shade.default }
-- hl.LspStatic = { italic = true }
-- hl.LspVariable = { link = '@variable' }

--- FzfLua
hl.FzfLuaNormal       = { fg = C.Foreground.default, bg = C.Background.default }
hl.FzfLuaBorder       = { fg = C.Foreground.surface, bg = C.Background.default }
hl.FzfLuaCursor       = { fg = C.Foreground.default, bg = C.Background.default }
hl.FzfLuaSearch       = { link = 'Search' }
hl.FzfLuaTitle        = { fg = C.Foreground.default, bold = true }
hl.FzfLuaCursorLine   = { link = 'CursorLine' }
hl.FzfLuaCursorLineNr = { link = 'CursorLineNr' }

hl.dosiniLabel  = { fg = C.Colors.Hint }
hl.dosiniHeader = { fg = C.Colors.Error }

hl.CopilotSuggestion = { bg = C.Shade.emphasis, fg = C.Foreground.muted }
hl.NoiceCursor       = { fg = C.Foreground.default }


--- coc.nvim
hl.CocCodeLens = { fg = C.Foreground.muted, bg = C.Shade.default }
hl.CocDisabled = { fg = C.Foreground.muted, bg = C.Shade.default }

hl.CocFloatActive    = { link = 'PmenuSel' }
hl.CocFloatDividin   = { link = 'Winseparator' }
hl.CocFloatSbar      = { link = 'PmenuSbar' }
hl.CocFloatThumb     = { link = 'PmenuThumb' }
hl.CocFloating       = { link = 'NormalFloat' }
hl.CocFadeOut        = { link = 'Comment' }
hl.CocPumVirtualText = { link = 'Comment' }

hl.CocHighlightRead  = { bg = C.Background.emphasis }
hl.CocHighlightText  = { bg = C.Background.emphasis }
hl.CocHighlightWrite = { bg = C.Background.emphasis }

hl.CocHintFloat          = { link = 'NormalFloat' }
hl.CocInlayHint          = { fg = C.Foreground.muted, bg = C.Shade.default }
hl.CocHoverRange         = { bg = C.Background.emphasis }
hl.CocInlayHintType      = { fg = C.Foreground.muted, bg = C.Shade.default }
hl.CocInlayHintParameter = { fg = C.Foreground.muted, bg = C.Shade.default }

hl.CocSemDeclarationFunction    = { fg = C.Colors.Hint }
hl.CocSemDeclarationMethod      = { fg = C.Colors.Hint }
hl.CocSemDefaultLibraryMethod   = { fg = C.Colors.Hint, italic = true }
hl.CocSemRegexp                 = { fg = C.Colors.Hint }
hl.CocSemDeclarationType        = { fg = C.Colors.Caution }
hl.CocSemDecorator              = { fg = C.Colors.Note, italic = true }
hl.CocSemDefaultLibraryFunction = { fg = C.Colors.Note, italic = true }
hl.CocSemDefaultLibraryType     = { fg = C.Colors.Note, italic = true }
hl.CocSemDefaultLibraryVariable = { fg = C.Colors.Caution }
hl.CocSemDocumentationKeyword   = { fg = C.Colors.Danger }
hl.CocSemEnumMember             = { fg = C.Colors.Accent }
hl.CocSemMacro                  = { fg = C.Colors.Note }
hl.CocSemProperty               = { fg = C.Colors.Accent }
hl.CocSemStruct                 = { fg = C.Colors.Caution }
hl.CocSemVariable               = { fg = C.Foreground.default }
hl.CocSemNamespace              = { fg = C.Colors.Caution }

hl['@string.delimiter'] = { fg = C.Colors.Note } -- extra highlight

return hl
