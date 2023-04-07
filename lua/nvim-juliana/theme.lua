--- Generates a table of Highlight groups and their respective definitions
---@private
---@param C Colors
---@return {[string]: table<string, any>?}
return function(C)
  local hl = {}

  hl.Normal = { fg = C.fg2, bg = C.bg2 }

  hl.Visual = { bg = C.bg1 }
  hl.NormalFloat = { bg = C.bg3 }
  hl.FloatBorder = { fg = C.fg4, bg = C.bg2 }

  hl.Pmenu = { bg = C.bg3 }
  hl.PmenuSel = { bg = C.bg1, fg = C.fg1, bold = false }
  hl.PmenuSbar = { bg = C.bg3, fg = C.bg1 }
  hl.PmenuThumb = { bg = C.bg1 }

  hl.NonText = { fg = C.fg4 }
  hl.Whitespace = { fg = hl.NonText.fg }
  hl.Conceal = { fg = hl.NonText.fg }

  hl.WinSeparator = { fg = C.fg4 }
  hl.VertSplit = { fg = hl.WinSeparator.fg }

  hl.CursorLineNr = { bg = C.bg1, fg = C.fg1 }

  hl.CursorLine = { bg = hl.CursorLineNr.bg }
  hl.CursorColumn = { bg = hl.CursorLineNr.bg }
  hl.ColorColumn = { bg = hl.CursorLineNr.bg }

  hl.SignColumn = { fg = C.fg2, bg = C.bg2 }

  hl.LineNr = { fg = C.fg2, bg = C.bg1 }
  hl.LineNrAbove = { fg = C.fg3, bg = C.bg2 }
  hl.LineNrBelow = { fg = C.fg3, bg = C.bg2 }

  hl.DiffAdd = { fg = C.green }
  hl.DiffChange = { fg = C.yellow2 }
  hl.DiffDelete = { fg = C.red }
  hl.DiffText = { italic = true }

  hl.Directory = { fg = C.cyan }
  hl.EndOfBuffer = { fg = C.fg4 }

  hl.Error = { fg = C.orange, bg = C.shade1 }
  hl.ErrorMsg = { fg = C.red, bg = C.shade1 }

  hl.Folded = { fg = C.fg3, bg = C.shade1 }
  hl.FoldColumn = { fg = C.fg3 }

  hl.ModeMsg = { fg = C.fg2 }
  hl.MoreMsg = { fg = C.fg2, bold = true }

  hl.Question = { fg = C.fg2, bold = true }

  hl.Search = { fg = C.bg3, bg = C.yellow2 }
  hl.IncSearch = hl.Search
  hl.Substitute = hl.Search

  hl.SpellBad = { sp = C.red, undercurl = true }
  hl.SpellCap = { sp = C.yellow2, undercurl = true }
  hl.SpellLocal = { sp = C.cyan, undercurl = true }
  hl.SpellRare = { sp = C.magenta, undercurl = true }

  hl.StatusLine = { fg = C.fg2, bg = C.bg1 }
  hl.StatusLineNC = { fg = C.fg2, bg = C.bg3 }

  hl.TabLine = hl.StatusLine
  hl.TabLineFill = { fg = C.fg3, bg = C.bg1 }
  hl.TabLineSel = { fg = C.fg2, bg = C.bg2 }

  hl.WarningMsg = { fg = C.yellow3, bg = C.shade1 }

  hl.WildMenu = { bg = C.bg3 }

  hl.MatchParen = { bold = true }

  hl.DiagnosticError = { fg = C.red, bg = 'NONE' }
  hl.DiagnosticSignError = { fg = hl.DiagnosticError.fg, bold = true, bg = 'NONE' }
  hl.DiagnosticUnderlineError = { sp = hl.DiagnosticError.fg, undercurl = true, bg = 'NONE' }
  hl.DiagnosticVirtualTextError = { fg = hl.DiagnosticError.fg, bg = 'NONE' }
  hl.DiagnosticHint = { fg = C.cyan, bg = 'NONE' }
  hl.DiagnosticSignHint = { fg = hl.DiagnosticHint.fg, bold = true, bg = 'NONE' }
  hl.DiagnosticUnderlineHint = { sp = hl.DiagnosticHint.fg, undercurl = true, bg = 'NONE' }
  hl.DiagnosticVirtualTextHint = { fg = hl.DiagnosticHint.fg, bg = 'NONE' }
  hl.DiagnosticInfo = { fg = C.green, bg = 'NONE' }
  hl.DiagnosticSignInfo = { fg = hl.DiagnosticInfo.fg, bold = true, bg = 'NONE' }
  hl.DiagnosticUnderlineInfo = { sp = hl.DiagnosticInfo.fg, undercurl = true, bg = 'NONE' }
  hl.DiagnosticVirtualTextInfo = { fg = hl.DiagnosticInfo.fg, bg = 'NONE' }
  hl.DiagnosticWarn = { fg = C.yellow2, bg = 'NONE' }
  hl.DiagnosticSignWarn = { fg = hl.DiagnosticWarn.fg, bold = true, bg = 'NONE' }
  hl.DiagnosticUnderlineWarn = { sp = hl.DiagnosticWarn.fg, undercurl = true, bg = 'NONE' }
  hl.DiagnosticVirtualTextWarn = { fg = hl.DiagnosticWarn.fg, bg = 'NONE' }

  hl.Boolean = { fg = C.red, italic = true }
  hl.Character = { fg = C.green }
  hl.Comment = { fg = C.fg3 }
  hl.SpecialComment = { fg = C.fg3 }
  hl.Conditional = { fg = C.magenta }

  hl.Constant = { fg = C.red }
  hl.Define = { fg = C.magenta, italic = true }
  hl.Delimiter = { fg = C.fg3 }
  hl.Float = { fg = C.yellow1 }
  hl.Function = { fg = C.magenta }
  hl.Identifier = { fg = C.fg2 }
  hl.Include = { fg = C.red }
  hl.Keyword = { fg = C.magenta, italic = true }
  hl.Label = { fg = C.cyan }
  hl.Macro = { fg = C.cyan }
  hl.Number = { fg = C.yellow1 }
  hl.Operator = { fg = C.orange }
  hl.PreCondit = { fg = C.red }
  hl.PreProc = { fg = C.cyan }
  hl.Repeat = { fg = C.magenta }
  hl.Special = { fg = C.cyan }
  hl.SpecialChar = { fg = C.cyan }
  hl.SpecialKey = { fg = C.cyan }
  hl.Statement = { fg = C.fg2 }
  hl.StorageClass = { fg = C.red }
  hl.String = { fg = C.green }
  hl.Exception = { fg = C.magenta }
  hl.Struct = { fg = C.red }
  hl.Structure = { fg = C.yellow2 }
  hl.Tag = { fg = C.red }
  hl.Title = { fg = C.fg2, bold = true }
  hl.Todo = { fg = C.blue2, bold = true }
  hl.Type = { fg = C.yellow2 }
  hl.Typedef = { fg = C.yellow2 }
  hl.Underlined = { underdotted = true }

  -- Tree-sitter
  hl['@boolean'] = { fg = C.red, italic = true }
  hl['@character'] = { fg = C.cyan }
  hl['@character.special'] = { fg = C.cyan }
  hl['@comment'] = { fg = hl.Comment.fg }
  hl['@conditional'] = { fg = C.magenta }
  hl['@constant'] = { fg = C.fg1 }
  hl['@constant.builtin'] = { fg = C.fg2, italic = true }
  hl['@constant.macro'] = { fg = C.magenta, italic = true }
  hl['@constructor.javascript'] = { fg = C.yellow2 }
  hl['@constructor.lua'] = { fg = C.fg1 }
  hl['@constructor.typescript'] = { fg = C.yellow2 }
  hl['@enum'] = { fg = C.yellow2 }
  hl['@exception.rust'] = { fg = C.blue2 }
  hl['@field'] = { fg = C.blue1 }
  hl['@field.toml'] = { fg = C.red }
  hl['@field.yaml'] = { fg = C.cyan }
  hl['@float'] = { fg = C.yellow1 }
  hl['@function'] = { fg = C.cyan }
  hl['@function.builtin'] = { fg = C.blue2, italic = true }
  hl['@function.call'] = { fg = C.blue2 }
  hl['@function.css'] = { fg = C.blue2 }
  hl['@function.macro'] = { fg = C.blue2 }
  hl['@function.macro.commonlisp'] = { fg = C.red }
  hl['@include'] = { fg = C.magenta }
  hl['@interface'] = { fg = C.yellow2 }
  hl['@keyword'] = { fg = C.magenta, italic = true }
  hl['@keyword.function'] = { fg = C.magenta, italic = true }
  hl['@keyword.operator'] = { fg = C.orange }
  hl['@keyword.return'] = { fg = C.magenta }
  hl['@label'] = { fg = C.cyan }
  hl['@label.json'] = { fg = C.cyan }
  hl['@label.toml'] = { fg = C.cyan }
  hl['@label.vim'] = { fg = C.blue1 }
  hl['@method'] = { fg = C.cyan }
  hl['@method.call'] = { fg = C.blue2 }
  hl['@namespace'] = { fg = C.yellow2 }
  hl['@number'] = { fg = C.yellow1 }
  hl['@number.bash'] = { fg = C.yellow2 }
  hl['@operator'] = { fg = C.orange }
  hl['@parameter'] = { fg = C.fg2 }
  hl['@parameter.bash'] = { fg = C.fg2 }
  hl['@parameter.reference'] = { fg = C.fg2 }
  hl['@preproc'] = { fg = C.cyan }
  hl['@property'] = { fg = C.blue1 }
  hl['@property.toml'] = { fg = C.cyan }
  hl['@punctuation.delimiter'] = { fg = C.fg3 }
  hl['@punctuation.bracket'] = { fg = C.fg2 }
  hl['@punctuation.delimiter.python'] = { fg = C.fg1 }
  hl['@punctuation.delimiter.yaml'] = { fg = C.blue2 }
  hl['@punctuation.special'] = { fg = C.cyan }
  hl['@punctuation.special.markdown'] = { fg = C.orange, bold = false }
  hl['@repeat'] = { fg = C.magenta }
  hl['@repeat.python'] = { fg = C.red }
  hl['@storageclass'] = { fg = C.red }
  hl['@storageclass.lifetime'] = { fg = C.cyan }
  hl['@string'] = { fg = C.green }
  hl['@string.escape'] = { fg = C.cyan }
  hl['@string.regex'] = { fg = C.cyan }
  hl['@string.special'] = { fg = C.cyan }
  hl['@symbol'] = { fg = C.cyan }
  hl['@tag'] = { fg = C.red }
  hl['@tag.attribute'] = { fg = C.magenta }
  hl['@tag.delimiter'] = { fg = C.cyan }
  hl['@tag.delimiter.markdown'] = { fg = C.blue2 }
  hl['@tag.delimiter.markdown_inline'] = { fg = C.blue2 }
  hl['@tag.rust'] = { fg = C.cyan }
  hl['@tag.rust.lua'] = { fg = C.cyan }
  hl['@text'] = { fg = C.fg2 }
  hl['@text.emphasis'] = { italic = true, bold = true }
  hl['@text.literal'] = { fg = C.green, italic = true }
  hl['@text.literal.markdown_inline'] = { bg = C.bg1, fg = C.green }
  hl['@text.reference'] = { fg = C.cyan, underdotted = false }
  hl['@text.strong'] = { bold = true }
  hl['@text.title'] = { fg = C.fg2, bold = true }
  hl['@text.underline'] = { underline = true }
  hl['@text.uri'] = { fg = C.blue2, underdotted = true }
  hl['@type'] = { fg = C.yellow2 }
  hl['@type.builtin'] = { fg = C.blue2, italic = true }
  hl['@type.definition'] = { fg = C.yellow2 }
  hl['@type.qualifier'] = { fg = C.red }
  hl['@variable'] = { fg = C.fg2 }
  hl['@variable.builtin'] = { fg = C.fg2, italic = true }
  hl['@variable.builtin.clojure'] = { fg = C.fg2, italic = true }
  hl['@variable.builtin.javascript'] = { fg = C.fg2, italic = true }

  hl.gitCommitSelectedFile = { italic = true }
  hl.gitCommitSummary = { bold = true }
  hl.gitCommitTrailerToken = { fg = C.magenta, italic = true }
  hl.gitconfigVariable = { fg = C.blue1 }
  hl.gitcommitFirstLine = { bold = true }

  hl.vimContinue = { fg = C.fg4 }

  hl.manSectionHeading = { fg = C.fg1, bold = true }

  hl.healthHelp = { fg = C.yellow1 }
  hl.healthSuccess = { fg = C.green }

  hl.markdownRule = { fg = C.red }
  hl.markdownLinkText = { fg = C.fg2 }
  hl.markdownUrl = { fg = C.blue2, underline = true }
  hl.markdownLinkDelimiter = { fg = C.cyan }
  hl.markdownH1Delimiter = { fg = C.orange, bold = false }
  hl.markdownH2Delimiter = { fg = C.orange, bold = false }
  hl.markdownCode = { bg = C.bg1 }
  hl.markdownCodeDelimiter = { fg = C.blue2 }
  hl.markdownListMarker = { fg = C.yellow1 }

  hl.htmlTagName = { fg = C.red }

  hl.qfFileName = { fg = C.cyan }
  hl.qfLineNr = { bold = true }

  hl.tmuxCommands = { fg = C.magenta }
  hl.tmuxFlags = { fg = C.yellow2 }
  hl.tmuxFormatString = { fg = C.cyan }

  hl.FennelStringDelimiter = { fg = C.cyan }
  hl.FennelParen = { fg = C.fg1 }
  hl.FennelSpecialForm = { fg = C.magenta, italic = true }
  hl.FennelKeyword = { fg = C.red }

  hl.luaFunc = { fg = C.blue2 }
  hl.luaTable = { fg = C.fg2 }
  hl.luaStringDelimiter = { fg = C.blue2 }

  hl.helpHyperTextEntry = { fg = C.blue2, underdotted = true }
  hl.helpSectionDelim = { fg = C.red, bold = true }
  hl.helpHyperTextJump = { fg = C.blue2, underdotted = true }
  hl.helpHeader = { fg = C.fg2, bold = true }
  hl.helpExample = { fg = C.green }
  hl.helpURL = { fg = C.blue2, underline = true }
  hl.helpCommand = { bg = C.fg4 }

  hl.rainbowcol1 = { fg = C.magenta }
  hl.rainbowcol2 = { fg = C.orange }
  hl.rainbowcol3 = { fg = C.green }
  hl.rainbowcol4 = { fg = C.red }
  hl.rainbowcol5 = { fg = C.cyan }
  hl.rainbowcol6 = { fg = C.yellow1 }
  hl.rainbowcol7 = { fg = C.yellow3 }

  --- Highlight of indent character
  hl.IndentBlanklineChar = { fg = C.fg4, bg = 'NONE', nocombine = true }
  --- Highlight of space character.
  hl.IndentBlanklineSpaceChar = { fg = 'NONE', bg = 'NONE', nocombine = true }
  --- Highlight of space character on blank lines.
  hl.IndentBlanklineSpaceCharBlankline = { fg = 'NONE', bg = 'NONE', nocombine = true }

  --- Highlight of indent character when base of current context
  hl.IndentBlanklineContextChar = { fg = C.fg3, bg = 'NONE', nocombine = true }

  --- Highlight of space characters one indent level of the current context.
  hl.IndentBlanklineContextSpaceChar = { fg = 'NONE', bg = 'NONE', nocombine = true }

  --- Highlight of the first line of the current context.
  hl.IndentBlanklineContextStart = { fg = 'NONE', bg = 'NONE', sp = C.fg3, underdotted = true }

  hl.CmpItemAbbrDeprecated = { strikethrough = true }
  hl.CmpItemKindStruct = { fg = C.yellow2 }
  hl.CmpItemKindFunction = { fg = C.blue2 }
  hl.CmpItemKindText = { fg = C.fg2 }
  hl.CmpItemKindClass = { fg = C.yellow2 }
  hl.CmpItemKindValue = { fg = C.orange }
  hl.CmpItemKindEnum = { fg = C.yellow2 }
  hl.CmpItemKindInterface = { fg = C.yellow2 }
  hl.CmpItemKindMethod = { fg = C.cyan }
  hl.CmpItemKindUnit = { fg = C.red }
  hl.CmpItemKindConstant = { fg = C.fg1 }
  hl.CmpItemKindField = { fg = C.blue2 }
  hl.CmpItemKindModule = { fg = C.yellow2 }
  hl.CmpItemKindKeyword = { fg = C.magenta }
  hl.CmpItemKindEnumMember = { fg = C.fg1 }
  hl.CmpItemKindProperty = { fg = C.blue2 }
  hl.CmpItemKindOperator = { fg = C.orange }
  hl.CmpItemKindReference = { fg = C.fg2 }
  hl.CmpItemKindSnippet = { fg = C.fg1 }
  hl.CmpItemKindTypeParameter = { fg = C.yellow2 }
  hl.CmpItemKindVariable = { fg = C.fg2 }

  hl.LeapMatch = { fg = C.bg3, bg = C.orange, bold = true }
  hl.LeapLabelPrimary = { fg = C.bg3, bg = C.yellow2, bold = true }
  hl.LeapLabelSecondary = { fg = C.bg3, bg = C.yellow3, bold = true }
  hl.LeapLabelSelected = { fg = C.bg3, bg = C.yellow1, bold = true }
  hl.LeapBackdrop = { fg = 'NONE', bg = C.bg3 }

  hl.Sneak = { fg = C.bg3, bg = C.yellow2, bold = true }
  hl.SneakLabel = { fg = C.bg3, bg = C.yellow2, bold = true }

  hl.GitSignsDelete = { fg = C.red }
  hl.GitSignsChange = { fg = C.yellow2 }
  hl.GitSignsAdd = { fg = C.green }

  hl.packerHash = { fg = C.red }
  hl.packerString = { fg = C.green }
  hl.packerStatusSuccess = { fg = C.green }

  hl.LspReferenceText = { underline = true, sp = C.fg3, bg = 'NONE', fg = 'NONE' }
  hl.LspReferenceRead = { underline = true, sp = C.fg3, bg = 'NONE', fg = 'NONE' }
  hl.LspReferenceWrite = { underline = true, sp = C.fg3, bg = 'NONE', fg = 'NONE' }

  hl.TelescopeBorder = { fg = C.fg4 }
  hl.TelescopeTitle = { fg = C.fg2, bold = true }
  hl.TelescopePromptCounter = { fg = C.fg2 }
  hl.TelescopeMatching = { bg = C.bg2 }
  hl.TelescopeSelectionCaret = { fg = C.fg2 }
  hl.TelescopeSelection = { bg = C.bg1 }

  hl.FloatTitle = { fg = C.fg3 }

  hl.FocusedSymbol = { bg = C.bg1 }
  hl.TroubleIndent = { bg = C.bg2 }
  hl.TroubleLocation = { bold = true }

  hl.NvimTreeNormal = { fg = C.fg2, bg = C.shade1 }
  hl.NvimTreeRootFolder = { fg = C.fg2, bg = C.shade1 }
  hl.NvimTreeIndentMarker = { fg = C.fg3, bg = C.shade1 }
  hl.NvimTreeOpenedFolderName = { underdotted = true }
  hl.NvimTreeOpenedFile = { bg = C.bg1 }
  hl.NvimTreeFolderName = { fg = C.fg2, bg = C.shade1 }
  hl.NvimTreeEmptyFolderName = { fg = C.fg3 }
  hl.NvimTreeFolderIcon = { fg = C.fg3 }
  hl.NvimTreeExecFile = { fg = C.green, bold = true, bg = C.shade1 }
  hl.NvimTreeFileDeleted = { fg = C.fg3 }
  hl.NvimTreeFileNew = { fg = C.bg3, bg = C.shade1 }
  hl.NvimTreeSpecialFile = { fg = C.fg2, bg = C.shade1 }
  hl.NvimTreeGitDirty = { fg = C.red, bg = C.shade1 }
  hl.NvimTreeGitStaged = { fg = C.green, bg = C.shade1 }
  hl.NvimTreeGitRenamed = { fg = C.yellow2, bg = C.shade1 }
  hl.NvimTreeGitDeleted = { fg = C.red, bg = C.shade1 }
  hl.NvimTreeSymlink = { fg = C.cyan, bg = C.shade1 }

  hl.NotifyERRORBorder = { fg = hl.DiagnosticError.fg }
  hl.NotifyWARNBorder = { fg = hl.DiagnosticWarn.fg }
  hl.NotifyINFOBorder = { fg = hl.DiagnosticInfo.fg }
  hl.NotifyDEBUGBorder = { fg = C.orange }
  hl.NotifyTRACEBorder = { fg = C.magenta }
  hl.NotifyERRORIcon = { fg = hl.DiagnosticError.fg }
  hl.NotifyWARNIcon = { fg = hl.DiagnosticWarn.fg }
  hl.NotifyINFOIcon = { fg = hl.DiagnosticInfo.fg }
  hl.NotifyDEBUGIcon = { fg = C.orange }
  hl.NotifyTRACEIcon = { fg = C.magenta }
  hl.NotifyERRORTitle = { fg = hl.DiagnosticError.fg, bold = true }
  hl.NotifyWARNTitle = { fg = hl.DiagnosticWarn.fg, bold = true }
  hl.NotifyINFOTitle = { fg = hl.DiagnosticInfo.fg, bold = true }
  hl.NotifyDEBUGTitle = { fg = C.orange, bold = true }
  hl.NotifyTRACETitle = { fg = C.magenta, bold = true }
  hl.NotifyERRORBody = { fg = C.fg2 }
  hl.NotifyWARNBody = { fg = C.fg2 }
  hl.NotifyINFOBody = { fg = C.fg2 }
  hl.NotifyDEBUGBody = { fg = C.fg2 }
  hl.NotifyTRACEBody = { fg = C.fg2 }

  hl.DevIconGitAttributes = { fg = C.cyan }
  hl.DevIconGitCommit = { fg = C.red }
  hl.DevIconGitConfig = { fg = C.cyan }
  hl.DevIconGitIgnore = { fg = C.red }
  hl.DevIconGitModules = { fg = C.cyan }
  hl.DevIconDropbox = { fg = C.blue2 }
  hl.DevIconToml = { fg = C.cyan }
  hl.DevIconYaml = { fg = C.cyan }
  hl.DevIconJson = { fg = C.yellow2 }
  hl.DevIconYml = { fg = C.cyan }
  hl.DevIconMd = { fg = C.fg1 }
  hl.DevIconGo = { fg = C.blue2 }
  hl.DevIconTs = { fg = C.blue2 }
  hl.DevIconTsx = { fg = C.blue2 }
  hl.DevIconDsStore = { fg = C.fg3 }
  hl.DevIconDockerfile = { fg = C.blue2 }
  hl.DevIconScheme = { fg = C.fg1 }

  hl['@lsp.type.type'] = { fg = C.yellow2 }
  hl['@lsp.typemod.type.defaultLibrary'] = { fg = C.blue2, italic = true }
  hl['@lsp.typemod.type.documentation'] = { fg = C.yellow2 }
  hl['@lsp.type.enum'] = { fg = C.yellow2 }
  hl['@lsp.typemod.enum.defaultLibrary'] = { fg = C.blue2, italic = true }
  hl['@lsp.type.interface'] = { fg = C.yellow2 }
  hl['@lsp.typemod.interface.defaultLibrary'] = { fg = C.blue2, italic = true }
  hl['@lsp.type.class'] = { fg = C.yellow2 }
  hl['@lsp.typemod.class.defaultLibrary'] = { fg = C.yellow2, italic = true }
  hl['@lsp.type.struct'] = { fg = C.yellow2 }
  hl['@lsp.typemod.struct.defaultLibrary'] = { fg = C.blue2, italic = true }
  hl['@lsp.type.macro'] = { fg = C.yellow2 }
  hl['@lsp.typemod.function.definition'] = { fg = C.cyan }
  hl['@lsp.type.function'] = { fg = C.blue2, nocombine = true }
  hl['@lsp.typemod.function.declaration'] = { fg = C.cyan }
  hl['@lsp.typemod.function.modification'] = { fg = C.cyan }
  hl['@lsp.typemod.function.defaultLibrary'] = { italic = true }
  hl['@lsp.typemod.function.documentation'] = { fg = C.blue2 }
  hl['@lsp.type.method'] = { fg = C.cyan }
  hl['@lsp.typemod.method.definition'] = { fg = C.cyan }
  hl['@lsp.type.property'] = { fg = C.blue1 }
  hl['@lsp.type.variable'] = { fg = C.fg2 }
  hl['@lsp.type.decorator'] = { fg = C.cyan, bold = true }
  hl['@lsp.typemod.decorator.defaultLibrary'] = { fg = C.cyan, bold = true, italic = true }
  hl['@lsp.type.namespace'] = { fg = C.yellow2 }
  hl['@lsp.typemod.namespace.defaultLibrary'] = { fg = C.yellow2, italic = true }
  hl['@lsp.type.parameter'] = { fg = C.fg2 }
  hl['@lsp.type.enumMember'] = { fg = C.blue1 }
  hl['@lsp.type.typeParameter'] = { fg = C.yellow2 }
  hl['@lsp.mod.defaultLibrary'] = { italic = true }
  hl['@lsp.mod.deprecated'] = { strikethrough = true }
  hl['@lsp.mod.declaration'] = {}
  hl['@lsp.typemod.variable.global.lua'] = { fg = C.fg1, italic = true }

  --- FzfLua
  hl.FzfLuaNormal = { fg = C.fg2, bg = C.bg2 }
  hl.FzfLuaBorder = { fg = C.fg4, bg = C.bg2 }
  hl.FzfLuaCursor = { fg = C.fg2, bg = C.bg2 }
  hl.FzfLuaSearch = { fg = C.bg3, bg = C.bg3 }
  hl.FzfLuaTitle = { fg = C.fg2, bold = true }
  hl.FzfLuaCursorLine = { bg = C.bg1, fg = C.fg1 }
  hl.FzfLuaCursorLineNr = { bg = C.bg1, fg = C.fg1 }

  hl.dosiniLabel = { fg = C.cyan }
  hl.dosiniHeader = { fg = C.red }

  hl.CopilotSuggestion = { bg = C.shade2, fg = C.fg3 }
  hl.NoiceCursor = { fg = C.fg2 }

  --- coc.nvim
  hl.CocCodeLens = { fg = C.fg3, bg = C.shade1 }
  hl.CocDisabled = { fg = C.fg3, bg = C.shade1 }

  hl.CocCursorRange = { fg = C.shade2, bg = C.yellow1, bold = true }
  hl.CocSelectedRange = { fg = C.shade2, bg = C.yellow1, bold = true }

  hl.CocListsDesc = { fg = C.fg3 }

  hl.CocFloatActive = { bg = C.bg1, fg = C.fg1, bold = false }
  hl.CocFloatDividin = { fg = C.fg4 }
  hl.CocFloatSbar = { bg = C.bg3, fg = C.bg1 }
  hl.CocFloatThumb = { bg = C.bg1 }
  hl.CocFadeOut = { fg = C.fg3 }
  hl.CocPumVirtualText = { fg = C.fg3 }

  hl.CocHighlightRead = { underline = true, bg = 'NONE', fg = 'NONE' }
  hl.CocHighlightText = { underline = true, bg = 'NONE', fg = 'NONE' }
  hl.CocHighlightWrite = { underline = true, bg = 'NONE', fg = 'NONE' }

  hl.CocHintFloat = { bold = true, bg = 'NONE', fg = 'NONE' }
  hl.CocInlayHint = { fg = C.fg3, bg = 'NONE' }
  hl.CocHoverRange = { underline = true, bg = 'NONE', sp = 'NONE' }
  hl.CocInlayHintType = { fg = C.fg3, bg = 'NONE' }
  hl.CocInlayHintParameter = { fg = C.fg3, bg = 'NONE' }

  -- coc-lists
  hl.CocListLine = { bg = C.bg1, fg = C.fg1, bold = false }
  hl.CocListPath = { fg = C.fg2 }
  hl.CocListMode = { fg = C.fg2 }
  hl.CocListsDesc = { fg = C.fg2 }

  hl.CocListFgGreen = { fg = C.green }
  hl.CocListFgRed = { fg = C.red }
  hl.CocListFgBlue = { fg = C.blue2 }
  hl.CocListFgCyan = { fg = C.cyan }
  hl.CocListFgGrey = { fg = C.fg3 }
  hl.CocListFgWhite = { fg = C.fg1 }
  hl.CocListFgYellow = { fg = C.yellow2 }
  hl.CocListFgMagenta = { fg = C.magenta }

  hl.CocListBgGreen = { fg = C.bg3, bg = C.green, bold = true }
  hl.CocListBgRed = { fg = C.bg3, bg = C.red, bold = true }
  hl.CocListBgBlue = { fg = C.bg3, bg = C.blue2, bold = true }
  hl.CocListBgCyan = { fg = C.bg3, bg = C.cyan, bold = true }
  hl.CocListBgGrey = { fg = C.bg3, bg = C.fg3, bold = true }
  hl.CocListBgWhite = { fg = C.bg3, bg = C.fg1, bold = true }
  hl.CocListBgYellow = { fg = C.bg3, bg = C.yellow2, bold = true }
  hl.CocListBgMagenta = { fg = C.bg3, bg = C.magenta, bold = true }

  --- coc-semantic-tokens
  hl.CocSemType = { fg = C.yellow2 }
  hl.CocSemClass = { fg = C.yellow2 }
  hl.CocSemDecorator = { fg = C.magenta }
  hl.CocSemEnumMember = { fg = C.fg1 }
  hl.CocSemMacro = { fg = C.blue2 }
  hl.CocSemMethod = { fg = C.cyan }
  hl.CocSemNamespace = { fg = C.yellow2 }
  hl.CocSemProperty = { fg = C.blue1 }
  hl.CocSemRegexp = { fg = C.cyan }
  hl.CocSemModifier = { fg = C.red }
  hl.CocSemStruct = { fg = C.yellow2 }
  hl.CocSemTypeParameter = { fg = C.fg2 }
  hl.CocSemVariable = { fg = hl['@variable'].fg }
  hl.CocSemFunction = { fg = C.blue2 }
  hl.CocSemMacroBang = { fg = C.orange }
  hl.CocSemFormatSpecifier = { fg = C.cyan }
  hl.CocSemBuiltinAttribute = { fg = C.magenta }
  hl.CocSemColon = { fg = C.red }
  hl.CocSemAngle = { fg = C.orange }
  hl.CocSemCharacter = { fg = C.cyan }
  hl.CocSemKeyword = { italic = true }
  hl.CocSemComment = { fg = 'NONE' }

  --- token-modifiers
  hl.CocSemReadonlyVariable = { italic = true }
  hl.CocSemStaticVariable = { italic = true }
  hl.CocSemCallableVariable = { fg = C.blue2 }

  hl.CocSemDeclarationFunction = { fg = C.cyan }
  hl.CocSemDefinitionFunction = { fg = C.cyan }

  hl.CocSemReferenceMethod = { fg = C.blue2 }
  hl.CocSemDeclarationMethod = { fg = C.cyan }
  hl.CocSemDefaultLibraryMethod = { fg = C.blue2, italic = true }
  hl.CocSemDeclarationSelfKeyword = { fg = C.red }
  hl.CocSemDeclarationMacro = { fg = C.cyan }

  hl.CocSemDefaultLibrary = { italic = true }

  hl.CocSemDocumentationKeyword = { fg = C.orange }
  hl.CocSemDocumentationType = hl.CocSemType
  hl.CocSemDocumentationDecorator = hl.CocSemDecorator
  hl.CocSemDocumentationEnumMember = hl.CocSemEnumMember
  hl.CocSemDocumentationMacro = hl.CocSemMacro
  hl.CocSemDocumentationMethod = hl.CocSemMethod
  hl.CocSemDocumentationNamespace = hl.CocSemNamespace
  hl.CocSemDocumentationProperty = hl.CocSemProperty
  hl.CocSemDocumentationRegexp = hl.CocSemRegexp
  hl.CocSemDocumentationModifier = hl.CocSemModifier
  hl.CocSemDocumentationStruct = hl.CocSemStruct
  hl.CocSemDocumentationTypeParameter = hl.CocSemTypeParameter
  hl.CocSemDocumentationVariable = hl.CocSemVariable
  hl.CocSemDocumentationFunction = hl.CocSemFunction

  --- coc-symbols
  hl.CocSymbolEnum = { fg = C.yellow2 }
  hl.CocSymbolStruct = { fg = C.yellow2 }
  hl.CocSymbolText = { fg = C.fg2 }
  hl.CocSymbolField = { fg = C.blue1 }
  hl.CocSymbolProperty = { fg = C.blue1 }
  hl.CocSymbolEnumMember = { fg = C.fg1 }
  hl.CocSymbolVariable = { fg = C.yellow2 }
  hl.CocSymbolFunction = { fg = C.blue2 }

  --- coc-tree
  hl.CocTreeTitle = { fg = C.fg1, bold = true }
  hl.CocTreeDescription = { fg = C.fg2 }
  hl.CocTreeSelected = { bg = C.bg1 }
  return hl
end
