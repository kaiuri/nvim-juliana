--- Colors
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

hl.Normal = { fg = C.Foreground.default, bg = C.Background.default }

hl.Visual = { bg = C.Background.muted }
hl.NormalFloat = { bg = C.Background.emphasis }
hl.FloatBorder = { fg = C.Foreground.surface, bg = C.Background.default }

hl.Pmenu = { bg = C.Background.emphasis }
hl.PmenuSel = { bg = C.Background.muted, fg = C.Foreground.emphasis, bold = false }
hl.PmenuSbar = { bg = C.Background.emphasis, fg = C.Background.muted }
hl.PmenuThumb = { bg = C.Background.muted, }

hl.NonText = { fg = C.Foreground.surface }
hl.Whitespace = { fg = hl.NonText.fg }
hl.Conceal = { fg = hl.NonText.fg }

hl.WinSeparator = { fg = C.Foreground.surface }
hl.VertSplit = { fg = hl.WinSeparator.fg }

hl.CursorLineNr = { bg = C.Background.muted, fg = C.Foreground.emphasis }

hl.CursorLine   = { bg = hl.CursorLineNr.bg }
hl.CursorColumn = { bg = hl.CursorLineNr.bg }
hl.ColorColumn  = { bg = hl.CursorLineNr.bg }

hl.SignColumn = { fg = C.Foreground.default, bg = C.Background.default }

hl.LineNr = { fg = C.Foreground.default, bg = C.Background.muted }
hl.LineNrAbove = { fg = C.Foreground.muted, bg = C.Background.default }
hl.LineNrBelow = { fg = C.Foreground.muted, bg = C.Background.default }

hl.DiffAdd = { fg = C.Colors.Info }
hl.DiffChange = { fg = C.Colors.Caution }
hl.DiffDelete = { fg = C.Colors.Error }
hl.DiffText = { italic = true }

hl.Directory = { fg = C.Colors.Hint }
hl.EndOfBuffer = { fg = C.Foreground.surface }

hl.Error = { fg = C.Colors.Danger, bg = C.Shade.default }
hl.ErrorMsg = { fg = C.Colors.Error, bg = C.Shade.default }

hl.Folded = { fg = C.Foreground.muted, bg = C.Shade.default }
hl.FoldColumn = { fg = C.Foreground.muted }

hl.ModeMsg = { fg = C.Foreground.default }
hl.MoreMsg = { fg = C.Foreground.default, bold = true }

hl.Question = { fg = C.Foreground.default, bold = true }

hl.Search = { fg = C.Background.emphasis, bg = C.Colors.Caution }
hl.IncSearch = hl.Search
hl.Substitute = hl.Search

hl.SpellBad = { sp = C.Colors.Error, undercurl = true }
hl.SpellCap = { sp = C.Colors.Caution, undercurl = true }
hl.SpellLocal = { sp = C.Colors.Hint, undercurl = true }
hl.SpellRare = { sp = C.Colors.Trace, undercurl = true }

hl.StatusLine = { fg = C.Foreground.default, bg = C.Background.muted }
hl.StatusLineNC = { fg = C.Foreground.default, bg = C.Background.emphasis }

hl.TabLine = hl.StatusLine
hl.TabLineFill = { fg = C.Foreground.muted, bg = C.Background.muted }
hl.TabLineSel = { fg = C.Foreground.default, bg = C.Background.default }

hl.WarningMsg = { fg = C.Colors.Warn, bg = C.Shade.default }

hl.WildMenu = { bg = C.Background.emphasis }


hl.MatchParen = { bold = true }

hl.DiagnosticError = { fg = C.Colors.Error, bg = 'NONE' }
hl.DiagnosticSignError = { fg = hl.DiagnosticError.fg, bold = true, bg = 'NONE' }
hl.DiagnosticUnderlineError = { sp = hl.DiagnosticError.fg, undercurl = true, bg = 'NONE' }
hl.DiagnosticVirtualTextError = { fg = hl.DiagnosticError.fg, bg = 'NONE' }
hl.DiagnosticHint = { fg = C.Colors.Hint, bg = 'NONE' }
hl.DiagnosticSignHint = { fg = hl.DiagnosticHint.fg, bold = true, bg = 'NONE' }
hl.DiagnosticUnderlineHint = { sp = hl.DiagnosticHint.fg, undercurl = true, bg = 'NONE' }
hl.DiagnosticVirtualTextHint = { fg = hl.DiagnosticHint.fg, bg = 'NONE' }
hl.DiagnosticInfo = { fg = C.Colors.Info, bg = 'NONE' }
hl.DiagnosticSignInfo = { fg = hl.DiagnosticInfo.fg, bold = true, bg = 'NONE' }
hl.DiagnosticUnderlineInfo = { sp = hl.DiagnosticInfo.fg, undercurl = true, bg = 'NONE' }
hl.DiagnosticVirtualTextInfo = { fg = hl.DiagnosticInfo.fg, bg = 'NONE' }
hl.DiagnosticWarn = { fg = C.Colors.Caution, bg = 'NONE' }
hl.DiagnosticSignWarn = { fg = hl.DiagnosticWarn.fg, bold = true, bg = 'NONE' }
hl.DiagnosticUnderlineWarn = { sp = hl.DiagnosticWarn.fg, undercurl = true, bg = 'NONE' }
hl.DiagnosticVirtualTextWarn = { fg = hl.DiagnosticWarn.fg, bg = 'NONE' }

hl.Boolean = { fg = C.Colors.Error, italic = true }
hl.Character = { fg = C.Colors.Info }
hl.Comment = { fg = C.Foreground.muted }
hl.SpecialComment = { fg = C.Foreground.muted }
hl.Conditional = { fg = C.Colors.Trace }

hl.Constant = { fg = C.Colors.Error }
hl.Define = { fg = C.Colors.Trace, italic = true }
hl.Delimiter = { fg = C.Foreground.muted }
hl.Float = { fg = C.Colors.Important }
hl.Function = { fg = C.Colors.Trace }
hl.Identifier = { fg = C.Foreground.default }
hl.Include = { fg = C.Colors.Error }
hl.Keyword = { fg = C.Colors.Trace, italic = true }
hl.Label = { fg = C.Colors.Hint }
hl.Macro = { fg = C.Colors.Hint }
hl.Number = { fg = C.Colors.Important }
hl.Operator = { fg = C.Colors.Danger }
hl.PreCondit = { fg = C.Colors.Error }
hl.PreProc = { fg = C.Colors.Hint }
hl.Repeat = { fg = C.Colors.Trace }
hl.Special = { fg = C.Colors.Hint }
hl.SpecialChar = { fg = C.Colors.Hint }
hl.SpecialKey = { fg = C.Colors.Hint }
hl.Statement = { fg = C.Foreground.default }
hl.StorageClass = { fg = C.Colors.Error }
hl.String = { fg = C.Colors.Info }
hl.Exception = { fg = C.Colors.Trace }
hl.Struct = { fg = C.Colors.Error }
hl.Structure = { fg = C.Colors.Caution }
hl.Tag = { fg = C.Colors.Error }
hl.Title = { fg = C.Foreground.default, bold = true }
hl.Todo = { fg = C.Colors.Note, bold = true }
hl.Type = { fg = C.Colors.Caution }
hl.Typedef = { fg = C.Colors.Caution }
hl.Underlined = { underdotted = true }

-- Tree-sitter
hl['@boolean'] = { fg = C.Colors.Error, italic = true }
hl['@character'] = { fg = C.Colors.Hint }
hl['@character.special'] = { fg = C.Colors.Hint }
hl['@comment'] = { fg = hl.Comment.fg }
hl['@conditional'] = { fg = C.Colors.Trace }
hl['@constant'] = { fg = C.Foreground.emphasis }
hl['@constant.builtin'] = { fg = C.Foreground.default, italic = true }
hl['@constant.macro'] = { fg = C.Colors.Trace, italic = true }
hl['@constructor.javascript'] = { fg = C.Colors.Caution }
hl['@constructor.lua'] = { fg = C.Foreground.emphasis }
hl['@constructor.typescript'] = { fg = C.Colors.Caution }
hl['@enum'] = { fg = C.Colors.Caution }
hl['@exception.rust'] = { fg = C.Colors.Note }
hl['@field'] = { fg = C.Colors.Accent }
hl['@field.toml'] = { fg = C.Colors.Error }
hl['@field.yaml'] = { fg = C.Colors.Hint }
hl['@float'] = { fg = C.Colors.Important }
hl['@function'] = { fg = C.Colors.Hint }
hl['@function.builtin'] = { fg = C.Colors.Note, italic = true }
hl['@function.call'] = { fg = C.Colors.Note }
hl['@function.css'] = { fg = C.Colors.Note }
hl['@function.macro'] = { fg = C.Colors.Note }
hl['@function.macro.commonlisp'] = { fg = C.Colors.Error }
hl['@include'] = { fg = C.Colors.Trace }
hl['@interface'] = { fg = C.Colors.Caution }
hl['@keyword'] = { fg = C.Colors.Trace, italic = true }
hl['@keyword.function'] = { fg = C.Colors.Trace, italic = true }
hl['@keyword.operator'] = { fg = C.Colors.Danger }
hl['@keyword.return'] = { fg = C.Colors.Trace }
hl['@label'] = { fg = C.Colors.Hint }
hl['@label.json'] = { fg = C.Colors.Hint }
hl['@label.toml'] = { fg = C.Colors.Hint }
hl['@label.vim'] = { fg = C.Colors.Accent }
hl['@method'] = { fg = C.Colors.Hint }
hl['@method.call'] = { fg = C.Colors.Note }
hl['@namespace'] = { fg = C.Colors.Caution }
hl['@number'] = { fg = C.Colors.Important }
hl['@number.bash'] = { fg = C.Colors.Caution }
hl['@operator'] = { fg = C.Colors.Danger }
hl['@parameter'] = { fg = C.Foreground.default }
hl['@parameter.bash'] = { fg = C.Foreground.default }
hl['@parameter.reference'] = { fg = C.Foreground.default }
hl['@preproc'] = { fg = C.Colors.Hint }
hl['@property'] = { fg = C.Colors.Accent }
hl['@property.toml'] = { fg = C.Colors.Hint }
hl['@punctuation.delimiter'] = { fg = C.Foreground.muted }
hl['@punctuation.bracket'] = { fg = C.Foreground.default }
hl['@punctuation.delimiter.python'] = { fg = C.Foreground.emphasis }
hl['@punctuation.delimiter.yaml'] = { fg = C.Colors.Note }
hl['@punctuation.special'] = { fg = C.Colors.Hint }
hl['@punctuation.special.markdown'] = { fg = C.Colors.Danger, bold = false }
hl['@repeat'] = { fg = C.Colors.Trace }
hl['@repeat.python'] = { fg = C.Colors.Error }
hl['@storageclass'] = { fg = C.Colors.Error }
hl['@storageclass.lifetime'] = { fg = C.Colors.Hint }
hl['@string'] = { fg = C.Colors.Info }
hl['@string.escape'] = { fg = C.Colors.Hint }
hl['@string.regex'] = { fg = C.Colors.Hint }
hl['@string.special'] = { fg = C.Colors.Hint }
hl['@symbol'] = { fg = C.Colors.Hint }
hl['@tag'] = { fg = C.Colors.Error }
hl['@tag.attribute'] = { fg = C.Colors.Trace }
hl['@tag.delimiter'] = { fg = C.Colors.Hint }
hl['@tag.delimiter.markdown'] = { fg = C.Colors.Note }
hl['@tag.delimiter.markdown_inline'] = { fg = C.Colors.Note }
hl['@tag.rust'] = { fg = C.Colors.Hint }
hl['@tag.rust.lua'] = { fg = C.Colors.Hint }
hl['@text'] = { fg = C.Foreground.default }
hl['@text.emphasis'] = { italic = true, bold = true }
hl['@text.literal'] = { fg = C.Colors.Info, italic = true }
hl['@text.literal.markdown_inline'] = { bg = C.Background.muted, fg = C.Colors.Info }
hl['@text.reference'] = { fg = C.Colors.Hint, underdotted = false }
hl['@text.strong'] = { bold = true }
hl['@text.title'] = { fg = C.Foreground.default, bold = true }
hl['@text.underline'] = { underline = true }
hl['@text.uri'] = { fg = C.Colors.Note, underdotted = true }
hl['@type'] = { fg = C.Colors.Caution }
hl['@type.builtin'] = { fg = C.Colors.Note, italic = true }
hl['@type.definition'] = { fg = C.Colors.Caution }
hl['@type.qualifier'] = { fg = C.Colors.Error }
hl['@variable'] = { fg = C.Foreground.default }
hl['@variable.builtin'] = { fg = C.Foreground.default, italic = true }
hl['@variable.builtin.clojure'] = { fg = C.Foreground.default, italic = true }
hl['@variable.builtin.javascript'] = { fg = C.Foreground.default, italic = true }

hl.gitCommitSelectedFile = { italic = true }
hl.gitCommitSummary = { bold = true }
hl.gitCommitTrailerToken = { fg = C.Colors.Trace, italic = true }
hl.gitconfigVariable = { fg = C.Colors.Accent }
hl.gitcommitFirstLine = { bold = true }

hl.vimContinue = { fg = C.Foreground.surface }

hl.manSectionHeading = { fg = C.Foreground.emphasis, bold = true }

hl.healthHelp = { fg = C.Colors.Important }
hl.healthSuccess = { fg = C.Colors.Info }

hl.markdownRule = { fg = C.Colors.Error }
hl.markdownLinkText = { fg = C.Foreground.default }
hl.markdownUrl = { fg = C.Colors.Note, underline = true }
hl.markdownLinkDelimiter = { fg = C.Colors.Hint }
hl.markdownH1Delimiter = { fg = C.Colors.Danger, bold = false }
hl.markdownH2Delimiter = { fg = C.Colors.Danger, bold = false }
hl.markdownCode = { bg = C.Background.muted }
hl.markdownCodeDelimiter = { fg = C.Colors.Note }
hl.markdownListMarker = { fg = C.Colors.Important }

hl.htmlTagName = { fg = C.Colors.Error }

hl.qfFileName = { fg = C.Colors.Hint }
hl.qfLineNr = { bold = true }

hl.tmuxCommands = { fg = C.Colors.Trace }
hl.tmuxFlags = { fg = C.Colors.Caution }
hl.tmuxFormatString = { fg = C.Colors.Hint }

hl.FennelStringDelimiter = { fg = C.Colors.Hint }
hl.FennelParen = { fg = C.Foreground.emphasis }
hl.FennelSpecialForm = { fg = C.Colors.Trace, italic = true }
hl.FennelKeyword = { fg = C.Colors.Error }

hl.luaFunc = { fg = C.Colors.Note }
hl.luaTable = { fg = C.Foreground.default }
hl.luaStringDelimiter = { fg = C.Colors.Note }

hl.helpHyperTextEntry = { fg = C.Colors.Note, underdotted = true }
hl.helpSectionDelim = { fg = C.Colors.Error, bold = true }
hl.helpHyperTextJump = { fg = C.Colors.Note, underdotted = true }
hl.helpHeader = { fg = C.Foreground.default, bold = true }
hl.helpExample = { fg = C.Colors.Info }
hl.helpURL = { fg = C.Colors.Note, underline = true }
hl.helpCommand = { bg = C.Foreground.surface }

hl.rainbowcol1 = { fg = C.Colors.Trace }
hl.rainbowcol2 = { fg = C.Colors.Danger }
hl.rainbowcol3 = { fg = C.Colors.Info }
hl.rainbowcol4 = { fg = C.Colors.Error }
hl.rainbowcol5 = { fg = C.Colors.Hint }
hl.rainbowcol6 = { fg = C.Colors.Important }
hl.rainbowcol7 = { fg = C.Colors.Warn }

--- Highlight of indent character
hl.IndentBlanklineChar = { fg = C.Foreground.surface, bg = 'NONE', nocombine = true }
--- Highlight of space character.
hl.IndentBlanklineSpaceChar = { fg = 'NONE', bg = 'NONE', nocombine = true }
--- Highlight of space character on blank lines.
hl.IndentBlanklineSpaceCharBlankline = { fg = 'NONE', bg = 'NONE', nocombine = true }

--- Highlight of indent character when base of current context
hl.IndentBlanklineContextChar = { fg = C.Foreground.muted, bg = 'NONE', nocombine = true }

--- Highlight of space characters one indent level of the current context.
hl.IndentBlanklineContextSpaceChar = { fg = 'NONE', bg = 'NONE', nocombine = true }

--- Highlight of the first line of the current context.
hl.IndentBlanklineContextStart = { fg = 'NONE', bg = 'NONE', sp = C.Foreground.muted, underdotted = true }

hl.CmpItemAbbrDeprecated = { strikethrough = true }
hl.CmpItemKindStruct = { fg = C.Colors.Caution }
hl.CmpItemKindFunction = { fg = C.Colors.Note }
hl.CmpItemKindText = { fg = C.Foreground.default }
hl.CmpItemKindClass = { fg = C.Colors.Caution }
hl.CmpItemKindValue = { fg = C.Colors.Danger }
hl.CmpItemKindEnum = { fg = C.Colors.Caution }
hl.CmpItemKindInterface = { fg = C.Colors.Caution }
hl.CmpItemKindMethod = { fg = C.Colors.Hint }
hl.CmpItemKindUnit = { fg = C.Colors.Error }
hl.CmpItemKindConstant = { fg = C.Foreground.emphasis }
hl.CmpItemKindField = { fg = C.Colors.Note }
hl.CmpItemKindModule = { fg = C.Colors.Caution }
hl.CmpItemKindKeyword = { fg = C.Colors.Trace }
hl.CmpItemKindEnumMember = { fg = C.Foreground.emphasis }
hl.CmpItemKindProperty = { fg = C.Colors.Note }
hl.CmpItemKindOperator = { fg = C.Colors.Danger }
hl.CmpItemKindReference = { fg = C.Foreground.default }
hl.CmpItemKindSnippet = { fg = C.Foreground.emphasis }
hl.CmpItemKindTypeParameter = { fg = C.Colors.Caution }
hl.CmpItemKindVariable = { fg = C.Foreground.default }

hl.LeapMatch = { fg = C.Background.emphasis, bg = C.Colors.Danger, bold = true }
hl.LeapLabelPrimary = { fg = C.Background.emphasis, bg = C.Colors.Caution, bold = true }
hl.LeapLabelSecondary = { fg = C.Background.emphasis, bg = C.Colors.Warn, bold = true }
hl.LeapLabelSelected = { fg = C.Background.emphasis, bg = C.Colors.Important, bold = true }
hl.LeapBackdrop = { fg = 'NONE', bg = C.Background.emphasis }

hl.Sneak = { fg = C.Background.emphasis, bg = C.Colors.Caution, bold = true }
hl.SneakLabel = { fg = C.Background.emphasis, bg = C.Colors.Caution, bold = true }

hl.GitSignsDelete = { fg = C.Colors.Error }
hl.GitSignsChange = { fg = C.Colors.Caution }
hl.GitSignsAdd = { fg = C.Colors.Info }

hl.packerHash = { fg = C.Colors.Error }
hl.packerString = { fg = C.Colors.Info }
hl.packerStatusSuccess = { fg = C.Colors.Info }

hl.LspReferenceText  = { underline = true, sp = C.Foreground.muted, bg = 'NONE', fg = 'NONE' }
hl.LspReferenceRead  = { underline = true, sp = C.Foreground.muted, bg = 'NONE', fg = 'NONE' }
hl.LspReferenceWrite = { underline = true, sp = C.Foreground.muted, bg = 'NONE', fg = 'NONE' }

hl.TelescopeBorder = { fg = C.Foreground.surface }
hl.TelescopeTitle = { fg = C.Foreground.default, bold = true }
hl.TelescopePromptCounter = { fg = C.Foreground.default }
hl.TelescopeMatching = { bg = C.Background.default }
hl.TelescopeSelectionCaret = { fg = C.Foreground.default }
hl.TelescopeSelection = { bg = C.Background.muted }

hl.FloatTitle = { fg = C.Foreground.muted }

hl.FocusedSymbol = { bg = C.Background.muted }
hl.TroubleIndent = { bg = C.Background.default }
hl.TroubleLocation = { bold = true }

hl.NvimTreeNormal = { fg = C.Foreground.default, bg = C.Shade.default }
hl.NvimTreeRootFolder = { fg = C.Foreground.default, bg = C.Shade.default }
hl.NvimTreeIndentMarker = { fg = C.Foreground.muted, bg = C.Shade.default }
hl.NvimTreeOpenedFolderName = { underdotted = true }
hl.NvimTreeOpenedFile = { bg = C.Background.muted }
hl.NvimTreeFolderName = { fg = C.Foreground.default, bg = C.Shade.default }
hl.NvimTreeEmptyFolderName = { fg = C.Foreground.muted }
hl.NvimTreeFolderIcon = { fg = C.Foreground.muted }
hl.NvimTreeExecFile = { fg = C.Colors.Info, bold = true, bg = C.Shade.default }
hl.NvimTreeFileDeleted = { fg = C.Foreground.muted }
hl.NvimTreeFileNew = { fg = C.Background.emphasis, bg = C.Shade.default }
hl.NvimTreeSpecialFile = { fg = C.Foreground.default, bg = C.Shade.default }
hl.NvimTreeGitDirty = { fg = C.Colors.Error, bg = C.Shade.default }
hl.NvimTreeGitStaged = { fg = C.Colors.Info, bg = C.Shade.default }
hl.NvimTreeGitRenamed = { fg = C.Colors.Caution, bg = C.Shade.default }
hl.NvimTreeGitDeleted = { fg = C.Colors.Error, bg = C.Shade.default }
hl.NvimTreeSymlink = { fg = C.Colors.Hint, bg = C.Shade.default }

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
hl.DevIconYaml          = { fg = C.Colors.Hint }
hl.DevIconJson          = { fg = C.Colors.Caution }
hl.DevIconYml           = { fg = C.Colors.Hint }
hl.DevIconMd            = { fg = C.Foreground.emphasis }
hl.DevIconGo            = { fg = C.Colors.Note }
hl.DevIconTs            = { fg = C.Colors.Note }
hl.DevIconTsx           = { fg = C.Colors.Note }
hl.DevIconDsStore       = { fg = C.Foreground.muted }
hl.DevIconDockerfile    = { fg = C.Colors.Note }
hl.DevIconScheme        = { fg = C.Foreground.emphasis }

hl.LspType          = { fg = C.Colors.Caution }
hl.LspClass         = { fg = C.Colors.Caution }
hl.LspDecorator     = { fg = C.Colors.Trace }
hl.LspEnumMember    = { fg = C.Foreground.emphasis }
hl.LspMacro         = { fg = C.Colors.Note }
hl.LspMethod        = { fg = C.Colors.Hint }
hl.LspNamespace     = { fg = C.Colors.Caution }
hl.LspProperty      = { fg = C.Colors.Accent }
hl.LspRegexp        = { fg = C.Colors.Hint }
hl.LspModifier      = { fg = C.Colors.Error }
hl.LspStruct        = { fg = C.Colors.Caution }
hl.LspTypeParameter = { fg = C.Colors.Caution }
hl.LspVariable      = { fg = C.Foreground.default }
hl.LspFunction      = { fg = C.Colors.Note }
hl.LspKeyword       = { italic = true }

--- FzfLua
hl.FzfLuaNormal       = { fg = C.Foreground.default, bg = C.Background.default }
hl.FzfLuaBorder       = { fg = C.Foreground.surface, bg = C.Background.default }
hl.FzfLuaCursor       = { fg = C.Foreground.default, bg = C.Background.default }
hl.FzfLuaSearch       = { fg = C.Background.emphasis, bg = C.Background.emphasis }
hl.FzfLuaTitle        = { fg = C.Foreground.default, bold = true }
hl.FzfLuaCursorLine   = { bg = C.Background.muted, fg = C.Foreground.emphasis }
hl.FzfLuaCursorLineNr = { bg = C.Background.muted, fg = C.Foreground.emphasis }

hl.dosiniLabel  = { fg = C.Colors.Hint }
hl.dosiniHeader = { fg = C.Colors.Error }

hl.CopilotSuggestion = { bg = C.Shade.emphasis, fg = C.Foreground.muted }
hl.NoiceCursor       = { fg = C.Foreground.default }

--- coc.nvim
hl.CocCodeLens = { fg = C.Foreground.muted, bg = C.Shade.default }
hl.CocDisabled = { fg = C.Foreground.muted, bg = C.Shade.default }

hl.CocCursorRange   = { fg = C.Shade.emphasis, bg = C.Colors.Important, bold = true }
hl.CocSelectedRange = { fg = C.Shade.emphasis, bg = C.Colors.Important, bold = true }

hl.CocListsDesc = { fg = C.Foreground.muted }

hl.CocFloatActive    = { bg = C.Background.muted, fg = C.Foreground.emphasis, bold = false }
hl.CocFloatDividin   = { fg = C.Foreground.surface }
hl.CocFloatSbar      = { bg = C.Background.emphasis, fg = C.Background.muted }
hl.CocFloatThumb     = { bg = C.Background.muted }
hl.CocFadeOut        = { fg = C.Foreground.muted }
hl.CocPumVirtualText = { fg = C.Foreground.muted }

hl.CocHighlightRead  = { underline = true, bg = 'NONE', fg = 'NONE' }
hl.CocHighlightText  = { underline = true, bg = 'NONE', fg = 'NONE' }
hl.CocHighlightWrite = { underline = true, bg = 'NONE', fg = 'NONE' }

hl.CocHintFloat          = { bold = true, bg = 'NONE', fg = 'NONE' }
hl.CocInlayHint          = { fg = C.Foreground.muted, bg = 'NONE' }
hl.CocHoverRange         = { underline = true, bg = 'NONE', sp = 'NONE' }
hl.CocInlayHintType      = { fg = C.Foreground.muted, bg = 'NONE' }
hl.CocInlayHintParameter = { fg = C.Foreground.muted, bg = 'NONE' }

-- coc-lists
hl.CocListLine  = { bg = C.Background.muted, fg = C.Foreground.emphasis, bold = false }
hl.CocListPath  = { fg = C.Foreground.default }
hl.CocListMode  = { fg = C.Foreground.default }
hl.CocListsDesc = { fg = C.Foreground.default }

hl.CocListFgGreen   = { fg = C.Colors.Info }
hl.CocListFgRed     = { fg = C.Colors.Error }
hl.CocListFgBlue    = { fg = C.Colors.Note }
hl.CocListFgCyan    = { fg = C.Colors.Hint }
hl.CocListFgGrey    = { fg = C.Foreground.muted }
hl.CocListFgWhite   = { fg = C.Foreground.emphasis }
hl.CocListFgYellow  = { fg = C.Colors.Caution }
hl.CocListFgMagenta = { fg = C.Colors.Trace }

hl.CocListBgGreen   = { fg = C.Background.emphasis, bg = C.Colors.Info, bold = true }
hl.CocListBgRed     = { fg = C.Background.emphasis, bg = C.Colors.Error, bold = true }
hl.CocListBgBlue    = { fg = C.Background.emphasis, bg = C.Colors.Note, bold = true }
hl.CocListBgCyan    = { fg = C.Background.emphasis, bg = C.Colors.Hint, bold = true }
hl.CocListBgGrey    = { fg = C.Background.emphasis, bg = C.Foreground.muted, bold = true }
hl.CocListBgWhite   = { fg = C.Background.emphasis, bg = C.Foreground.emphasis, bold = true }
hl.CocListBgYellow  = { fg = C.Background.emphasis, bg = C.Colors.Caution, bold = true }
hl.CocListBgMagenta = { fg = C.Background.emphasis, bg = C.Colors.Trace, bold = true }

--- coc-semantic-tokens
hl.CocSemType             = { fg = C.Colors.Caution }
hl.CocSemClass            = { fg = C.Colors.Caution }
hl.CocSemDecorator        = { fg = C.Colors.Trace }
hl.CocSemEnumMember       = { fg = C.Foreground.emphasis }
hl.CocSemMacro            = { fg = C.Colors.Note }
hl.CocSemMethod           = { fg = C.Colors.Hint }
hl.CocSemNamespace        = { fg = C.Colors.Caution }
hl.CocSemProperty         = { fg = C.Colors.Accent }
hl.CocSemRegexp           = { fg = C.Colors.Hint }
hl.CocSemModifier         = { fg = C.Colors.Error }
hl.CocSemStruct           = { fg = C.Colors.Caution }
hl.CocSemTypeParameter    = { fg = C.Foreground.default }
hl.CocSemVariable         = { fg = hl['@variable'].fg }
hl.CocSemFunction         = { fg = C.Colors.Note }
hl.CocSemMacroBang        = { fg = C.Colors.Danger }
hl.CocSemFormatSpecifier  = { fg = C.Colors.Hint }
hl.CocSemBuiltinAttribute = { fg = C.Colors.Trace }
hl.CocSemColon            = { fg = C.Colors.Error }
hl.CocSemAngle            = { fg = C.Colors.Danger }
hl.CocSemCharacter        = { fg = C.Colors.Hint }
hl.CocSemKeyword          = { italic = true }
hl.CocSemComment          = { fg = 'NONE' }

--- token-modifiers
hl.CocSemReadonlyVariable = { italic = true }
hl.CocSemStaticVariable   = { italic = true }
hl.CocSemCallableVariable = { fg = C.Colors.Note }

hl.CocSemDeclarationFunction = { fg = C.Colors.Hint }
hl.CocSemDefinitionFunction  = { fg = C.Colors.Hint }

hl.CocSemReferenceMethod        = { fg = C.Colors.Note }
hl.CocSemDeclarationMethod      = { fg = C.Colors.Hint }
hl.CocSemDefaultLibraryMethod   = { fg = C.Colors.Note, italic = true }
hl.CocSemDeclarationSelfKeyword = { fg = C.Colors.Error }
hl.CocSemDeclarationMacro       = { fg = C.Colors.Hint }

hl.CocSemDefaultLibrary = { italic = true }

hl.CocSemDocumentationKeyword       = { fg = C.Colors.Danger }
hl.CocSemDocumentationType          = hl.CocSemType
hl.CocSemDocumentationDecorator     = hl.CocSemDecorator
hl.CocSemDocumentationEnumMember    = hl.CocSemEnumMember
hl.CocSemDocumentationMacro         = hl.CocSemMacro
hl.CocSemDocumentationMethod        = hl.CocSemMethod
hl.CocSemDocumentationNamespace     = hl.CocSemNamespace
hl.CocSemDocumentationProperty      = hl.CocSemProperty
hl.CocSemDocumentationRegexp        = hl.CocSemRegexp
hl.CocSemDocumentationModifier      = hl.CocSemModifier
hl.CocSemDocumentationStruct        = hl.CocSemStruct
hl.CocSemDocumentationTypeParameter = hl.CocSemTypeParameter
hl.CocSemDocumentationVariable      = hl.CocSemVariable
hl.CocSemDocumentationFunction      = hl.CocSemFunction

--- coc-symbols
hl.CocSymbolEnum       = { fg = C.Colors.Caution }
hl.CocSymbolStruct     = { fg = C.Colors.Caution }
hl.CocSymbolText       = { fg = C.Foreground.default }
hl.CocSymbolField      = { fg = C.Colors.Accent }
hl.CocSymbolProperty   = { fg = C.Colors.Accent }
hl.CocSymbolEnumMember = { fg = C.Foreground.emphasis }
hl.CocSymbolVariable   = { fg = C.Colors.Caution }
hl.CocSymbolFunction   = { fg = C.Colors.Note }

--- coc-tree
hl.CocTreeTitle       = { fg = C.Foreground.emphasis, bold = true }
hl.CocTreeDescription = { fg = C.Foreground.default }
hl.CocTreeSelected    = { bg = C.Background.muted }

return hl
