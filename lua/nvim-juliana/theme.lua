--- Generates a table of Highlight groups and their respective definitions
---@private
---@param C Colors
---@param highlight fun(group: string, style: table<string, any>): nil
---@return nil
return function(C, highlight)
  local default             = { fg = C.fg2, bg = C.bg2 }
  local muted               = { fg = C.fg3 }
  local selection           = { bg = C.selection_bg }
  local text_red            = { fg = C.red2 }
  local text_yellow         = { fg = C.yellow2 }
  local text_yellow_italic  = { fg = C.yellow2, italic = true }
  local text_green          = { fg = C.green }
  local text_cyan           = { fg = C.cyan2 }
  local text_magenta        = { fg = C.magenta }
  local text_selected       = { bg = C.bg1 }
  local text_emphasis       = { fg = C.fg1 }
  local text_orange         = { fg = C.orange }
  local text_magenta_italic = { fg = C.magenta, italic = true }
  local ui_title            = { fg = C.fg2, bold = true }
  local ui_select           = { bg = C.bg1, fg = C.fg1 }
  local ui_thumb            = { bg = C.bg3, fg = C.bg1 }
  local current_line        = { fg = C.fg1, bg = C.selection_bg }
  local search              = { fg = C.bg3, bg = C.yellow1, bold = true }
  local text_blue           = { fg = C.blue2 }
  highlight('Normal', default)
  highlight('Visual', selection)
  highlight('Pmenu', { bg = C.bg3 })
  highlight('NormalFloat', { link = 'Pmenu' })
  highlight('WildMenu', { link = 'Pmenu' })
  highlight('NonText', { fg = C.fg4 })
  highlight('FloatBorder', { link = 'NonText' })
  highlight('PmenuSel', ui_select)
  highlight('PmenuSbar', ui_thumb)
  highlight('PmenuThumb', text_selected)
  highlight('Whitespace', { link = 'NonText' })
  highlight('Conceal', { link = 'NonText' })
  highlight('WinSeparator', { link = 'NonText' })
  highlight('VertSplit', { link = 'NonText' })
  highlight('CursorLineNr', current_line)
  highlight('CursorLine', selection)
  highlight('CursorColumn', selection)
  highlight('CursorColumn', selection)
  highlight('ColorColumn', selection)
  highlight('SignColumn', default)
  highlight('CursorLineFold', default)
  highlight('LineNr', current_line)
  highlight('LineNrAbove', muted)
  highlight('LineNrBelow', muted)
  highlight('DiffAdd', { fg = 'NONE', bg = C.diff_add })
  highlight('DiffDelete', { fg = 'NONE', bg = C.diff_remove })
  highlight('DiffText', { fg = 'NONE', bg = C.diff_text })
  highlight('Directory', text_cyan)
  highlight('EndOfBuffer', { link = 'NonText' })
  highlight('Error', text_orange)
  highlight('ErrorMsg', text_red)
  highlight('Folded', muted)
  highlight('FoldColumn', muted)
  highlight('ModeMsg', { fg = C.fg2 })
  highlight('MoreMsg', text_emphasis)
  highlight('Question', { fg = C.magenta })
  highlight('Search', search)
  highlight('IncSearch', search)
  highlight('Substitute', search)
  highlight('SpellBad', { sp = C.red2, undercurl = true })
  highlight('SpellCap', { sp = C.yellow2, undercurl = true })
  highlight('SpellLocal', { sp = C.cyan2, undercurl = true })
  highlight('SpellRare', { sp = C.magenta, undercurl = true })
  highlight('StatusLine', { fg = C.fg2, bg = C.bg1 })
  highlight('StatusLineNC', { fg = C.fg2, bg = C.bg3 })
  highlight('TabLine', { fg = C.fg2, bg = C.bg1 })
  highlight('TabLineFill', { fg = C.fg3, bg = C.bg1 })
  highlight('TabLineSel', default)
  highlight('WarningMsg', { fg = C.yellow3, bg = C.bg3 })
  highlight('MatchParen', { bold = true })
  highlight('DiagnosticError', { fg = C.red1, bg = 'NONE' })
  highlight('DiagnosticSignError', { fg = C.red1, bold = true, bg = 'NONE' })
  highlight('DiagnosticUnderlineError', {})
  highlight('DiagnosticVirtualTextError', { fg = C.red1, bg = 'NONE' })
  highlight('DiagnosticHint', { fg = C.cyan1, bg = 'NONE' })
  highlight('DiagnosticSignHint', { fg = C.cyan1, bold = true, bg = 'NONE' })
  highlight('DiagnosticUnderlineHint', {})
  highlight('DiagnosticVirtualTextHint', { fg = C.cyan1, bg = 'NONE' })
  highlight('DiagnosticInfo', { fg = C.green, bg = 'NONE' })
  highlight('DiagnosticSignInfo', { fg = C.green, bold = true, bg = 'NONE' })
  highlight('DiagnosticUnderlineInfo', {})
  highlight('DiagnosticVirtualTextInfo', { fg = C.green, bg = 'NONE' })
  highlight('DiagnosticWarn', { fg = C.yellow1, bg = 'NONE' })
  highlight('DiagnosticSignWarn', { fg = C.yellow1, bold = true, bg = 'NONE' })
  highlight('DiagnosticUnderlineWarn', {})
  highlight('DiagnosticVirtualTextWarn', { fg = C.yellow1, bg = 'NONE' })
  highlight('Boolean', { fg = C.red2, italic = true })
  highlight('Character', text_green)
  highlight('Comment', muted)
  highlight('SpecialComment', muted)
  highlight('Conditional', text_magenta_italic)
  highlight('Constant', text_red)
  highlight('Define', text_magenta_italic)
  highlight('Delimiter', muted)
  highlight('Float', { fg = C.yellow1 })
  highlight('Function', text_magenta_italic)
  highlight('Identifier', { fg = C.fg2 })
  highlight('Include', text_red)
  highlight('Keyword', text_magenta_italic)
  highlight('Label', text_cyan)
  highlight('Macro', text_cyan)
  highlight('Number', { fg = C.yellow1 })
  highlight('Operator', text_orange)
  highlight('PreCondit', text_red)
  highlight('PreProc', text_cyan)
  highlight('Repeat', text_magenta_italic)
  highlight('Special', text_cyan)
  highlight('SpecialChar', text_cyan)
  highlight('SpecialKey', text_cyan)
  highlight('Statement', { fg = C.fg2 })
  highlight('StorageClass', text_red)
  highlight('String', { fg = C.green, italic = true })
  highlight('Exception', text_magenta_italic)
  highlight('Struct', text_red)
  highlight('Structure', text_yellow)
  highlight('Tag', text_red)
  highlight('Title', ui_title)
  highlight('Todo', { fg = C.blue2, bold = true })
  highlight('Type', text_yellow)
  highlight('Typedef', text_yellow)
  highlight('Underlined', { underdotted = true })
  highlight('@boolean', { fg = C.red2, italic = true })
  highlight('@character', text_cyan)
  highlight('@character.special', text_cyan)
  highlight('@comment', muted)
  highlight('@conditional', text_magenta_italic)
  highlight('@constant', text_emphasis)
  highlight('@constant.builtin', { fg = C.fg2, italic = true })
  highlight('@constant.macro', text_magenta_italic)
  highlight('@constructor.javascript', { fg = C.yellow2 })
  highlight('@constructor.lua', text_emphasis)
  highlight('@constructor.typescript', { fg = C.yellow2 })
  highlight('@conditional.ternary.typescript', text_orange)
  highlight('@enum', { fg = C.yellow2 })
  highlight('@exception.rust', text_blue)
  highlight('@field', { fg = C.blue1 })
  highlight('@field.toml', text_red)
  highlight('@field.yaml', text_cyan)
  highlight('@float', { fg = C.yellow1 })
  highlight('@function', text_cyan)
  highlight('@function.builtin', { fg = C.blue2, italic = true })
  highlight('@function.call', text_blue)
  highlight('@function.css', text_blue)
  highlight('@function.macro', text_blue)
  highlight('@function.macro.commonlisp', text_red)
  highlight('@include', text_magenta_italic)
  highlight('@interface', { fg = C.yellow2 })
  highlight('@keyword', text_magenta_italic)
  highlight('@keyword.lua', text_red)
  highlight('@keyword.function', text_magenta_italic)
  highlight('@keyword.function.python', { fg = C.red2, italic = true })
  highlight('@keyword.operator', text_orange)
  highlight('@keyword.return', text_magenta_italic)
  highlight('@keyword.coroutine', text_red)
  highlight('@label', text_cyan)
  highlight('@label.json', text_cyan)
  highlight('@label.toml', text_cyan)
  highlight('@label.vim', { fg = C.blue1 })
  highlight('@method', text_cyan)
  highlight('@method.call', text_blue)
  highlight('@namespace', { fg = C.yellow2 })
  highlight('@number', { fg = C.yellow1 })
  highlight('@number.bash', { fg = C.yellow2 })
  highlight('@operator', text_orange)
  highlight('@parameter', { fg = C.fg2 })
  highlight('@parameter.bash', { fg = C.fg2 })
  highlight('@parameter.reference', { fg = C.fg2 })
  highlight('@preproc', text_cyan)
  highlight('@property', { fg = C.blue1 })
  highlight('@property.toml', text_cyan)
  highlight('@punctuation.delimiter', text_cyan)
  highlight('@punctuation.bracket', { fg = C.fg2 })
  highlight('@punctuation.delimiter.python', text_emphasis)
  highlight('@punctuation.delimiter.yaml', text_blue)
  highlight('@punctuation.special', text_cyan)
  highlight('@punctuation.special.markdown', { fg = C.orange, bold = false })
  highlight('@repeat', text_magenta_italic)
  highlight('@repeat.python', text_red)
  highlight('@storageclass', text_red)
  highlight('@storageclass.lifetime', text_cyan)
  highlight('@string', { fg = C.green, italic = true })
  highlight('@string.delimiter', text_cyan)
  highlight('@string.escape', text_cyan)
  highlight('@string.regex', text_cyan)
  highlight('@string.special', text_cyan)
  highlight('@symbol', text_cyan)
  highlight('@tag', text_red)
  highlight('@tag.attribute', text_magenta)
  highlight('@tag.delimiter', text_cyan)
  highlight('@tag.delimiter.markdown', text_blue)
  highlight('@tag.delimiter.markdown_inline', text_blue)
  highlight('@tag.rust', text_cyan)
  highlight('@tag.rust.lua', text_cyan)
  highlight('@text', { fg = C.text_fg })
  highlight('@text.emphasis', { italic = true, bold = true })
  highlight('@text.literal', { fg = C.green, italic = true })
  highlight('@text.literal.markdown_inline', { bg = C.bg1, fg = C.fg2 })
  highlight('@text.reference', { fg = C.cyan2, underdotted = false })
  highlight('@text.strong', { bold = true })
  highlight('@text.title', ui_title)
  highlight('@text.underline', { underline = true })
  highlight('@text.uri', { fg = C.blue2, underdotted = true })
  highlight('@type', { fg = C.yellow2 })
  highlight('@type.builtin', { fg = C.blue2, italic = true })
  highlight('@type.definition', { fg = C.yellow2 })
  highlight('@type.qualifier', text_red)
  highlight('@variable', { fg = C.fg2 })
  highlight('@variable.builtin', { fg = C.fg2, italic = true })
  highlight('@variable.builtin.clojure', { fg = C.fg2, italic = true })
  highlight('@variable.builtin.javascript', { fg = C.fg2, italic = true })
  highlight('gitCommitSelectedFile', { italic = true })
  highlight('gitCommitSummary', { bold = true })
  highlight('gitCommitTrailerToken', text_magenta_italic)
  highlight('gitconfigVariable', { fg = C.blue1 })
  highlight('gitcommitFirstLine', { bold = true })
  highlight('justBody', { fg = C.fg2 })
  highlight('justInterpolationDelim', text_blue)
  highlight('justParameter', text_orange)
  highlight('justAssignment', text_emphasis)
  highlight('justBuiltInFunctions', { italic = true, fg = C.blue2 })
  highlight('justRecipeName', { fg = C.yellow3 })
  highlight('justFunction', text_cyan)
  highlight('vimContinue', { link = 'NonText' })
  highlight('manSectionHeading', { fg = C.fg1, bold = true })
  highlight('healthHelp', { fg = C.yellow1 })
  highlight('healthSuccess', text_green)
  highlight('markdownRule', text_red)
  highlight('markdownLinkText', { fg = C.fg2 })
  highlight('markdownUrl', { fg = C.blue2, underline = true })
  highlight('markdownLinkDelimiter', text_cyan)
  highlight('markdownH1Delimiter', { fg = C.orange, bold = false })
  highlight('markdownH2Delimiter', { fg = C.orange, bold = false })
  highlight('markdownCode', text_selected)
  highlight('markdownCodeDelimiter', text_blue)
  highlight('markdownListMarker', { fg = C.yellow1 })
  highlight('htmlTagName', text_red)
  highlight('qfFileName', text_cyan)
  highlight('qfLineNr', { bold = true })
  highlight('tmuxCommands', text_magenta_italic)
  highlight('tmuxFlags', { fg = C.yellow2 })
  highlight('tmuxFormatString', text_cyan)
  highlight('FennelStringDelimiter', text_cyan)
  highlight('FennelParen', text_emphasis)
  highlight('FennelSpecialForm', text_magenta_italic)
  highlight('FennelKeyword', text_red)
  highlight('luaFunc', text_blue)
  highlight('luaTable', { fg = C.fg2 })
  highlight('luaStringDelimiter', text_blue)
  highlight('helpHyperTextEntry', { fg = C.blue2, underdotted = true })
  highlight('helpSectionDelim', { fg = C.red2, bold = true })
  highlight('helpHyperTextJump', { fg = C.blue2, underdotted = true })
  highlight('helpHeader', { fg = C.fg2, bold = true })
  highlight('helpExample', text_green)
  highlight('helpURL', { fg = C.blue2, underline = true })
  highlight('helpCommand', { bg = C.bg1, italic = true })
  highlight('rainbowcol1', text_magenta)
  highlight('rainbowcol2', text_orange)
  highlight('rainbowcol3', text_green)
  highlight('rainbowcol4', text_red)
  highlight('rainbowcol5', text_cyan)
  highlight('rainbowcol6', { fg = C.yellow1 })
  highlight('rainbowcol7', { fg = C.yellow3 })
  highlight('IndentBlanklineChar', { fg = C.fg4, bg = 'NONE', nocombine = true })
  highlight('IndentBlanklineSpaceChar', { fg = 'NONE', bg = 'NONE', nocombine = true })
  highlight('IndentBlanklineSpaceCharBlankline', { fg = 'NONE', bg = 'NONE', nocombine = true })
  highlight('IndentBlanklineContextChar', { fg = C.fg3, bg = 'NONE', nocombine = true })
  highlight('IndentBlanklineContextSpaceChar', { fg = 'NONE', bg = 'NONE', nocombine = true })
  highlight('IndentBlanklineContextStart', { fg = 'NONE', bg = 'NONE', sp = C.fg3, underdotted = true })
  highlight('CmpItemAbbrDeprecated', { strikethrough = true })
  highlight('CmpItemKindStruct', { fg = C.yellow2 })
  highlight('CmpItemKindFunction', text_blue)
  highlight('CmpItemKindText', { fg = C.fg2 })
  highlight('CmpItemKindClass', { fg = C.yellow2 })
  highlight('CmpItemKindValue', text_orange)
  highlight('CmpItemKindEnum', { fg = C.yellow2 })
  highlight('CmpItemKindInterface', { fg = C.yellow2 })
  highlight('CmpItemKindMethod', text_cyan)
  highlight('CmpItemKindUnit', text_red)
  highlight('CmpItemKindConstant', text_emphasis)
  highlight('CmpItemKindField', text_blue)
  highlight('CmpItemKindModule', { fg = C.yellow2 })
  highlight('CmpItemKindKeyword', text_magenta_italic)
  highlight('CmpItemKindEnumMember', text_emphasis)
  highlight('CmpItemKindProperty', text_blue)
  highlight('CmpItemKindOperator', text_orange)
  highlight('CmpItemKindReference', { fg = C.fg2 })
  highlight('CmpItemKindSnippet', text_emphasis)
  highlight('CmpItemKindTypeParameter', { fg = C.yellow2 })
  highlight('CmpItemKindVariable', { fg = C.fg2 })
  highlight('LeapMatch', { fg = C.bg3, bg = C.orange, bold = true })
  highlight('LeapLabelPrimary', { fg = C.bg3, bg = C.yellow2, bold = true })
  highlight('LeapLabelSecondary', { fg = C.bg3, bg = C.yellow3, bold = true })
  highlight('LeapLabelSelected', { fg = C.bg3, bg = C.yellow1, bold = true })
  highlight('LeapBackdrop', { fg = 'NONE', bg = C.bg3 })
  highlight('Sneak', { fg = C.bg3, bg = C.yellow2, bold = true })
  highlight('SneakLabel', { fg = C.bg3, bg = C.yellow2, bold = true })
  highlight('GitSignsDelete', text_red)
  highlight('GitSignsChange', { fg = C.yellow2 })
  highlight('GitSignsAdd', text_green)
  highlight('packerHash', text_red)
  highlight('packerString', text_green)
  highlight('packerStatusSuccess', text_green)
  highlight('LspReferenceText', { underline = true, sp = C.fg3, bg = 'NONE', fg = 'NONE' })
  highlight('LspReferenceRead', { underline = true, sp = C.fg3, bg = 'NONE', fg = 'NONE' })
  highlight('LspReferenceWrite', { underline = true, sp = C.fg3, bg = 'NONE', fg = 'NONE' })
  highlight('TelescopeBorder', { link = 'NonText' })
  highlight('TelescopeTitle', ui_title)
  highlight('TelescopePromptCounter', { fg = C.fg2 })
  highlight('TelescopeMatching', { bg = C.bg2 })
  highlight('TelescopeSelectionCaret', { fg = C.fg2 })
  highlight('TelescopeSelection', text_selected)
  highlight('FloatTitle', ui_title)
  highlight('FocusedSymbol', text_selected)
  highlight('TroubleIndent', { bg = C.bg2 })
  highlight('TroubleLocation', { bold = true })
  highlight('NvimTreeNormal', { fg = C.fg2, bg = C.bg3 })
  highlight('NvimTreeRootFolder', { fg = C.fg2 })
  highlight('NvimTreeIndentMarker', { fg = C.fg3 })
  highlight('NvimTreeOpenedFolderName', { underdotted = true })
  highlight('NvimTreeOpenedFile', text_selected)
  highlight('NvimTreeFolderName', { fg = C.fg2 })
  highlight('NvimTreeEmptyFolderName', muted)
  highlight('NvimTreeFolderIcon', muted)
  highlight('NvimTreeExecFile', { fg = C.green, bold = true })
  highlight('NvimTreeFileDeleted', muted)
  highlight('NvimTreeFileNew', { fg = C.bg3 })
  highlight('NvimTreeSpecialFile', { fg = C.fg2 })
  highlight('NvimTreeGitDirty', text_red)
  highlight('NvimTreeGitStaged', text_green)
  highlight('NvimTreeGitRenamed', { fg = C.yellow2 })
  highlight('NvimTreeGitDeleted', text_red)
  highlight('NvimTreeSymlink', { fg = C.cyan2, bg = C.bg3 })
  highlight('NotifyERRORBorder', { fg = C.red1 })
  highlight('NotifyWARNBorder', { fg = C.yellow1 })
  highlight('NotifyINFOBorder', text_green)
  highlight('NotifyDEBUGBorder', text_orange)
  highlight('NotifyTRACEBorder', text_magenta)
  highlight('NotifyERRORIcon', text_red)
  highlight('NotifyWARNIcon', text_yellow)
  highlight('NotifyINFOIcon', text_green)
  highlight('NotifyDEBUGIcon', text_orange)
  highlight('NotifyTRACEIcon', text_magenta)
  highlight('NotifyERRORTitle', { fg = C.red1, bold = true })
  highlight('NotifyWARNTitle', { fg = C.yellow1, bold = true })
  highlight('NotifyINFOTitle', { fg = C.green, bold = true })
  highlight('NotifyDEBUGTitle', { fg = C.orange, bold = true })
  highlight('NotifyTRACETitle', { fg = C.magenta, bold = true })
  highlight('NotifyERRORBody', { fg = C.fg2 })
  highlight('NotifyWARNBody', { fg = C.fg2 })
  highlight('NotifyINFOBody', { fg = C.fg2 })
  highlight('NotifyDEBUGBody', { fg = C.fg2 })
  highlight('NotifyTRACEBody', { fg = C.fg2 })
  highlight('DevIconGitAttributes', text_cyan)
  highlight('DevIconGitCommit', text_red)
  highlight('DevIconGitConfig', text_cyan)
  highlight('DevIconGitIgnore', text_red)
  highlight('DevIconGitModules', text_cyan)
  highlight('DevIconDropbox', text_blue)
  highlight('DevIconToml', text_cyan)
  highlight('DevIconYaml', text_cyan)
  highlight('DevIconJson', { fg = C.yellow2 })
  highlight('DevIconYml', text_cyan)
  highlight('DevIconMd', text_emphasis)
  highlight('DevIconGo', text_blue)
  highlight('DevIconTs', text_blue)
  highlight('DevIconTsx', text_blue)
  highlight('DevIconDsStore', muted)
  highlight('DevIconDockerfile', text_blue)
  highlight('DevIconScheme', text_emphasis)
  highlight('@lsp.type.type', text_yellow)
  highlight('@lsp.typemod.type.defaultLibrary', { fg = C.blue2, italic = true })
  highlight('@lsp.typemod.type.documentation', text_yellow)
  highlight('@lsp.type.enum', text_yellow)
  highlight('@lsp.typemod.enum.defaultLibrary', { fg = C.blue2, italic = true })
  highlight('@lsp.type.interface', text_yellow)
  highlight('@lsp.typemod.interface.defaultLibrary', { fg = C.blue2, italic = true })
  highlight('@lsp.type.class', text_yellow)
  highlight('@lsp.typemod.class.defaultLibrary', text_yellow_italic)
  highlight('@lsp.type.struct', { fg = C.yellow2 })
  highlight('@lsp.typemod.struct.defaultLibrary', { fg = C.blue2, italic = true })
  highlight('@lsp.type.macro', { fg = C.yellow2 })
  highlight('@lsp.typemod.function.definition', text_cyan)
  highlight('@lsp.type.function', { fg = C.blue2, nocombine = true })
  highlight('@lsp.typemod.function.declaration', text_cyan)
  highlight('@lsp.typemod.function.modification', text_cyan)
  highlight('@lsp.typemod.function.defaultLibrary', { italic = true })
  highlight('@lsp.typemod.function.documentation', text_blue)
  highlight('@lsp.type.method', text_cyan)
  highlight('@lsp.typemod.method.definition', text_cyan)
  highlight('@lsp.type.property', { fg = C.blue1 })
  highlight('@lsp.type.variable', { fg = C.fg2 })
  highlight('@lsp.type.decorator', { fg = C.cyan2, bold = true })
  highlight('@lsp.typemod.decorator.defaultLibrary', { fg = C.cyan2, bold = true, italic = true })
  highlight('@lsp.type.namespace', { fg = C.yellow2 })
  highlight('@lsp.typemod.namespace.defaultLibrary', { fg = C.yellow2, italic = true })
  highlight('@lsp.type.parameter', { fg = C.fg2 })
  highlight('@lsp.type.enumMember', { fg = C.blue1 })
  highlight('@lsp.type.typeParameter', { fg = C.yellow2 })
  highlight('@lsp.mod.defaultLibrary', { italic = true })
  highlight('@lsp.mod.deprecated', { strikethrough = true })
  highlight('@lsp.mod.declaration', {})
  highlight('@lsp.typemod.variable.global.lua', { fg = C.fg1, italic = true })
  highlight('FzfLuaNormal', default)
  highlight('FzfLuaBorder', { link = 'NonText' })
  highlight('FzfLuaCursor', default)
  highlight('FzfLuaSearch', search)
  highlight('FzfLuaTitle', ui_title)
  highlight('FzfLuaCursorLine', ui_select)
  highlight('FzfLuaCursorLineNr', ui_select)
  highlight('dosiniLabel', text_cyan)
  highlight('dosiniHeader', text_red)
  highlight('CopilotSuggestion', { bg = C.bg3, fg = C.fg3 })
  highlight('NoiceCursor', { fg = C.fg2 })
  highlight('CocCodeLens', { fg = C.fg3, bg = C.bg3 })
  highlight('CocDisabled', { fg = C.fg3, bg = C.bg3 })
  highlight('CocGitAddedSign', { fg = C.cyan1 })
  highlight('CocGitChangedSign', { fg = C.yellow1 })
  highlight('CocGitRemovedSign', { fg = C.red1 })
  highlight('CocGitTopRemovedSign', { fg = C.red1 })
  highlight('CocGitChangeRemovedSign', text_red)
  highlight('CocCursorRange', { fg = C.bg3, bg = C.yellow1, bold = true })
  highlight('CocSelectedRange', { fg = C.bg3, bg = C.yellow1, bold = true })
  highlight('CocListsDesc', muted)
  highlight('CocFloatActive', { bg = C.bg1, fg = C.fg1, bold = false })
  highlight('CocFloatDividin', { link = 'NonText' })
  highlight('CocFloatSbar', ui_thumb)
  highlight('CocFloatThumb', text_selected)
  highlight('CocFadeOut', muted)
  highlight('CocPumVirtualText', muted)
  highlight('CocHighlightRead', { underline = true, bg = 'NONE', fg = 'NONE' })
  highlight('CocHighlightText', { underline = true, bg = 'NONE', fg = 'NONE' })
  highlight('CocHighlightWrite', { underline = true, bg = 'NONE', fg = 'NONE' })
  highlight('CocHintFloat', { bold = true, bg = 'NONE', fg = 'NONE' })
  highlight('CocInlayHint', { fg = C.fg3, bg = 'NONE' })
  highlight('CocHoverRange', { underline = true, bg = 'NONE', sp = 'NONE' })
  highlight('CocInlayHintType', { fg = C.fg3, bg = 'NONE' })
  highlight('CocInlayHintParameter', { fg = C.fg3, bg = 'NONE' })
  highlight('CocListLine', { bg = C.bg1, fg = C.fg1, bold = false })
  highlight('CocListPath', { fg = C.fg2 })
  highlight('CocListMode', { fg = C.fg2 })
  highlight('CocListFgGreen', { fg = C.green, bg = 'NONE' })
  highlight('CocListFgRed', { fg = C.red2, bg = 'NONE' })
  highlight('CocListFgBlue', { fg = C.blue2, bg = 'NONE' })
  highlight('CocListFgCyan', { fg = C.cyan2, bg = 'NONE' })
  highlight('CocListFgGrey', { fg = C.fg3, bg = 'NONE' })
  highlight('CocListFgWhite', { fg = C.fg1, bg = 'NONE' })
  highlight('CocListFgYellow', { fg = C.yellow2, bg = 'NONE' })
  highlight('CocListFgMagenta', { fg = C.magenta, bg = 'NONE' })
  highlight('CocListBgGreen', { fg = 'NONE', bg = C.green })
  highlight('CocListBgRed', { fg = 'NONE', bg = C.red2 })
  highlight('CocListBgBlue', { fg = 'NONE', bg = C.blue2 })
  highlight('CocListBgCyan', { fg = 'NONE', bg = C.cyan2 })
  highlight('CocListBgGrey', { fg = 'NONE', bg = C.fg3 })
  highlight('CocListBgWhite', { fg = 'NONE', bg = C.fg1 })
  highlight('CocListBgYellow', { fg = 'NONE', bg = C.yellow2 })
  highlight('CocListBgMagenta', { fg = 'NONE', bg = C.magenta })
  highlight('CocSemType', { fg = C.yellow2 })
  highlight('CocSemClass', { fg = C.yellow2 })
  highlight('CocSemDecorator', { fg = C.magenta })
  highlight('CocSemEnumMember', text_emphasis)
  highlight('CocSemMacro', text_blue)
  highlight('CocSemMethod', text_cyan)
  highlight('CocSemNamespace', { fg = C.yellow2 })
  highlight('CocSemProperty', { fg = C.blue1 })
  highlight('CocSemRegexp', text_cyan)
  highlight('CocSemModifier', text_red)
  highlight('CocSemStruct', { fg = C.yellow2 })
  highlight('CocSemTypeParameter', { fg = C.fg2 })
  highlight('CocSemVariable', { fg = C.fg2 })
  highlight('CocSemFunction', text_blue)
  highlight('CocSemMacroBang', text_orange)
  highlight('CocSemFormatSpecifier', text_cyan)
  highlight('CocSemBuiltinAttribute', { fg = C.magenta })
  highlight('CocSemColon', text_red)
  highlight('CocSemAngle', text_orange)
  highlight('CocSemCharacter', text_cyan)
  highlight('CocSemKeyword', { italic = true })
  highlight('CocSemComment', { fg = 'NONE' })
  highlight('CocSemReadonlyVariable', { italic = true })
  highlight('CocSemStaticVariable', { italic = true })
  highlight('CocSemCallableVariable', text_blue)
  highlight('CocSemDeclarationFunction', text_cyan)
  highlight('CocSemDefinitionFunction', text_cyan)
  highlight('CocSemReferenceMethod', text_blue)
  highlight('CocSemDeclarationMethod', text_cyan)
  highlight('CocSemDefaultLibraryMethod', { fg = C.blue2, italic = true })
  highlight('CocSemDeclarationSelfKeyword', text_red)
  highlight('CocSemDeclarationMacro', text_cyan)
  highlight('CocSemDefaultLibrary', { italic = true })
  highlight('CocSemDocumentationKeyword', text_orange)
  highlight('CocSemDocumentationType', { fg = C.yellow2 })
  highlight('CocSemDocumentationDecorator', { fg = C.magenta })
  highlight('CocSemDocumentationEnumMember', text_emphasis)
  highlight('CocSemDocumentationMacro', text_blue)
  highlight('CocSemDocumentationMethod', text_cyan)
  highlight('CocSemDocumentationNamespace', { fg = C.yellow2 })
  highlight('CocSemDocumentationProperty', { fg = C.blue1 })
  highlight('CocSemDocumentationRegexp', text_cyan)
  highlight('CocSemDocumentationModifier', text_red)
  highlight('CocSemDocumentationStruct', text_yellow)
  highlight('CocSemDocumentationTypeParameter', { fg = C.fg2 })
  highlight('CocSemDocumentationVariable', { fg = C.fg2 })
  highlight('CocSemDocumentationFunction', text_blue)
  highlight('CocSymbolEnum', text_yellow)
  highlight('CocSymbolStruct', text_yellow)
  highlight('CocSymbolText', { fg = C.fg2 })
  highlight('CocSymbolField', { fg = C.blue1 })
  highlight('CocSymbolProperty', { fg = C.blue1 })
  highlight('CocSymbolEnumMember', text_emphasis)
  highlight('CocSymbolVariable', text_yellow)
  highlight('CocSymbolFunction', text_blue)
  highlight('CocTreeTitle', ui_title)
  highlight('CocTreeDescription', { fg = C.fg2 })
  highlight('CocTreeSelected', text_selected)
  highlight('CocTreeOpenClose', { bold = true })
  highlight('CocTreeDescription', muted)
  highlight('fzf1', { fg = C.red2, bg = C.bg3 })
  highlight('fzf2', { fg = C.red2, bg = C.bg3 })
  highlight('fzf3', { fg = C.red2, bg = C.bg3 })
end
