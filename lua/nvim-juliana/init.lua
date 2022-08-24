local colors = {
  black = '#333333',
  bg0 = '#272E35',
  bg1 = '#303841',
  gray0 = '#46525C',
  gray1 = '#A6ACB8',
  fg = '#d5dee6',
  white1 = '#FFFFFF',
  blue = '#5c99d6',
  cyan = '#5FB4B4',
  green = '#99C794',
  yellow = '#FAC761',
  orange1 = '#F9AE58',
  orange2 = '#F97B58',
  red = '#EC5F66',
  pink = '#cc8ec6',
}
local background = colors.bg1
local foreground = colors.fg
local selection = colors.gray0
-- local find_highlight_foreground = c.gray0
-- local find_highlight = c.yellow

local error = colors.red
local hint = colors.yellow
local info = colors.cyan
local warn = colors.orange1

--- reference https://github.com/nvim-treesitter/nvim-treesitter/blob/master/lua/nvim-treesitter/highlight.lua
--- TODO: Add support for everything in there.
local highlights = {

  --- Modes
  Normal = { fg = foreground, bg = background },
  Visual = { bg = selection },

  --- UI
  NormalFloat = { bg = colors.bg0 },
  FloatBorder = { fg = '#7999B9', bg = background },

  Pmenu = { bg = colors.bg0 },
  PmenuSbar = { fg = colors.gray0 },
  PmenuSel = { bg = colors.bg1, bold = true },
  PmenuThumb = { bg = '#58657E' },

  NonText = { fg = colors.gray0 },

  ColorColumn = { fg = '#CBD3E2', bg = '#2B333B' },

  Conceal = { fg = colors.gray1 },

  CursorLine = { bg = '#38424c' },
  CursorColumn = { link = 'CursorLine' },

  CursorLineNr = { link = 'LineNr' },

  DiffAdd = { sp = colors.green, underdotted = true },
  DiffChange = { sp = colors.red, underdotted = true },
  DiffDelete = { fg = colors.gray1 },
  DiffText = { italic = true },

  Directory = { fg = colors.cyan },
  EndOfBuffer = { fg = '#2B333B' },
  Error = { fg = colors.orange2 },
  ErrorMsg = { fg = colors.red },
  Exception = { fg = colors.pink },

  -- Folds
  Folded = { fg = colors.gray1 },
  FoldColumn = { bg = background },

  LineNr = { link = 'Visual' },
  LineNrAbove = { fg = colors.gray1 },
  LineNrBelow = { link = 'LineNrAbove' },

  ModeMsg = { fg = '#DEE1E8' },
  MoreMsg = { fg = '#DEE1E8', bold = true },
  Question = { link = 'MoreMsg' },

  Search = { link = 'Visual' },
  IncSearch = { link = 'Search' },

  SignColumn = { fg = foreground, bg = background },
  SpellBad = { sp = colors.red, undercurl = true },
  SpellCap = { sp = colors.orange1, undercurl = true },
  SpellLocal = { sp = colors.cyan, undercurl = true },
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

  DiagnosticVirtualTextError = { bg = colors.bg0, fg = colors.error },
  DiagnosticVirtualTextWarn = { bg = colors.bg0, fg = colors.warn },
  DiagnosticVirtualTextInfo = { bg = colors.bg0, fg = colors.info },
  DiagnosticVirtualTextHint = { bg = colors.bg0, fg = colors.hint },

  -- VimSyntax hl-groups

  MatchParen = { bold = true },
  Boolean = { fg = colors.red, italic = true },

  Character = { fg = colors.green },

  String = { fg = colors.green },
  Comment = { fg = colors.gray1 },
  Conditional = { fg = colors.pink },
  Constant = { fg = colors.orange1 },
  Define = { fg = colors.pink, italic = true },

  Delimiter = { fg = colors.gray1 },
  Float = { link = 'Number' },
  Function = { fg = colors.cyan },
  Identifier = { fg = foreground },
  Include = { fg = '#7999B9' },

  Keyword = { fg = colors.pink, italic = true },

  Label = { fg = colors.pink },
  Macro = { fg = '#8DADE7' },
  Number = { fg = colors.orange1 },
  Operator = { fg = colors.orange2 },
  PreCondit = { link = 'Include' },
  PreProc = { fg = '#A7B4CD' },
  Repeat = { fg = colors.pink },

  Special = { fg = colors.cyan },

  SpecialChar = { fg = colors.cyan },

  SpecialComment = { fg = '#788797', underline = true },
  SpecialKey = { fg = colors.cyan },
  Statement = { fg = colors.pink },
  StorageClass = { fg = colors.red },
  Structure = { link = 'StorageClass' },
  Struct = { link = 'Structure' },
  Tag = { fg = colors.red },
  Title = { fg = colors.pink },
  Todo = { fg = colors.blue, bold = true },
  Type = { fg = colors.pink, italic = true },
  Typedef = { link = 'Structure' },
  Underlined = { underdotted = true },
  Whitespace = { fg = '#5C75A3' },

  -- TS-hl globals
  TSPunctBracket = { link = 'Delimiter' },
  TSPunctDelimiter = { link = 'Delimiter' },
  TSPunctSpecial = { fg = colors.cyan },

  TSConstant = { link = 'Constant' },
  TSConstBuiltin = { fg = colors.red, italic = true },
  TSConstMacro = { link = 'Define' },
  TSString = { link = 'String' },

  TSStringRegex = { fg = colors.cyan },
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

  TSParameter = { link = 'Identifier' },
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
  TSKeywordOperator = { link = 'TSOperator' },
  TSKeywordReturn = { link = 'TSKeyword' },
  TSLabel = { fg = colors.cyan },
  TSNamespace = { fg = colors.orange1 },
  TSNote = { fg = colors.green, bold = true },
  TSOperator = { link = 'Operator' },
  TSProperty = { fg = '#95B2D6' },
  TSStrong = { bold = true },
  TSSymbol = { fg = '#7EBFC4' },
  TSTag = { link = 'Tag' },
  TSTagAttribute = { fg = colors.pink },
  TSTagDelimiter = { fg = colors.cyan },
  TSText = { fg = foreground },
  TSTextReference = { fg = foreground, underdotted = true },
  TSTitle = { fg = foreground, bold = true },
  TSTodo = { link = 'Todo' },
  TSType = { fg = colors.orange1 },
  TSTypeBuiltin = { fg = colors.blue, italic = true },
  TSTypeQualifier = { fg = colors.red },
  TSURI = { fg = colors.cyan, underdotted = true },
  TSUnderline = { underline = true },
  TSVariable = { fg = foreground },
  TSVariableBuiltin = { fg = colors.red, italic = true },
  TSWarning = { fg = colors.orange1, bold = true },

  --- HTML
  htmlTagName = { link = 'Tag' },
  --- commentTS
  commentTSConstant = { fg = '#8C99A6' },

  -- git.vim

  gitCommitSelectedFile = { italic = true },
  gitCommitSummary = { bold = true },
  gitCommitTrailerToken = { fg = colors.pink, italic = true },

  --- health.vim
  healthHelp = { fg = colors.yellow },
  healthSuccess = { fg = colors.green },

  -- luaTS
  luaTSField = { link = 'TSField' },
  luaTSConstructor = { link = 'TSPunctBracket' },
  luaTable = { link = 'TSPunctBracket' },

  -- markdownTS
  markdownTSPunctSpecial = { fg = colors.orange2, bold = true },

  --- quickfix.vim
  qfFileName = { fg = colors.cyan },
  qfLineNr = { bold = true },

  -- RUST
  rustTSConstBuiltin = { link = 'TSConstant', italic = true },
  rustTSField = { fg = '#CBD3E2' },
  rustTSFuncMacro = { fg = colors.blue },
  rustTSFunction = { fg = colors.cyan },
  rustTSKeyword = { fg = colors.pink },
  rustTSOperator = { link = 'TSOperator' },
  rustTSPunctBracket = { fg = '#CBD3E2' },
  rustTSPunctDelimiter = { fg = colors.gray1 },
  rustTSType = { fg = colors.orange1 },
  rustTSTypeBuiltin = { fg = colors.pink, italic = true },

  -- golangTS

  goTSKeyword = { fg = colors.red },
  goTSType = { fg = colors.cyan },
  goTSFunction = { link = 'TSFunction' },
  goTSNamespace = { link = 'TSNamespace' },

  -- tmux

  tmuxCommands = { fg = colors.pink },
  tmuxFlags = { fg = colors.orange1 },
  tmuxFormatString = { fg = colors.cyan },

  -- typescriptTS

  typescriptTSProperty = { fg = '#95B2D6' },
  typescriptTSFunction = { link = 'Function' },
  typescriptTSConstructor = { fg = colors.orange1 },
  typescriptTSOperator = { link = 'TSOperator' },
  typescriptTSParameter = { link = 'TSVariable' },
  typescriptTSType = { fg = colors.cyan },
  typescriptTSKeyword = { fg = '#ec5f89', italic = true },
  -- typescriptTSPunctSpecial = { fg = colors.red },
  --- JavaScript
  jsdocTSKeyword = { link = 'typescriptType' },
  javaScriptReserved = { fg = colors.red },

  --- fennelTS

  fennelTSFuncMacro = { link = 'TSKeywordFunction' },
  fennelTSField = { link = 'TSField' },
  --- CSS
  cssTSType = { fg = colors.cyan },

  -- fennel.vim
  FennelStringDelimiter = { fg = colors.cyan },
  FennelParen = { link = 'TSPunctBracket' },
  FennelSpecialForm = { fg = colors.pink, italic = true },
  FennelKeyword = { link = 'clojureTSKeyword' },
  FennelTable = { link = 'luaTSPunctDelimiter' },

  --- clojureTS
  clojureTSKeywordFunction = { fg = colors.red },
  clojureTSKeyword = { fg = colors.red },
  clojureTSSymbol = { fg = colors.pink },

  clojureTSVariableBuiltin = { link = 'TSConstBuiltin' },
  clojureTSPunctSpecial = { fg = colors.orange2 },
  clojureTSFuncMacro = { fg = colors.orange2 },

  --- tomlTS
  tomlTSProperty = { link = 'TSLabel' },

  -- yamlTS
  yamlTSField = { link = 'TSLabel' },

  jsonTSLabel = { link = 'TSLabel' },
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
  TelescopeSelection = { bg = background },

  --- dressing.nvim
  FloatTitle = { link = 'Comment' },

  ---  symbols-outline.nvim
  FocusedSymbol = { link = 'Visual' },

  -- Trouble
  TroubleIndent = { bg = colors.bg1 },
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
  LspFunction = { link = 'TSFunction' },
  LspMethod = { link = 'TSMethod' },
  LspMacro = { link = 'Macro' },
  LspKeyword = { link = 'TSKeyword' },
  -- LspModifier = {},
  LspComment = { link = 'TSComment' },
  LspString = { link = 'TSString' },
  LspNumber = { link = 'TSNumber' },
  LspRegexp = { link = 'TSStringRegex' },
  LspOperator = { link = 'TSOperator' },
  -- LspDeclaration = {},
  -- LspDefinition = {},
  LspReadonly = { link = 'TSKeyword' },
  LspStatic = { fg = colors.orange1 },
  LspDeprecated = { strikethrough = true },
  -- LspAbstract = {},
  LspAsync = { fg = colors.red },
  -- LspModification = {},
  -- LspDocumentation = {},
  -- LspDefaultLibrary = { fg = colors.orange1 },
}

local function set_hl(tbl)
  for group, attrs in pairs(tbl) do
    vim.api.nvim_set_hl(0, group, attrs)
  end
end

local load = function()
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end
  vim.cmd('highlight clear')
  vim.cmd('set t_Co=256')
  vim.g.colors_name = 'juliana'

  set_hl(highlights)
end

return {
  load = load,
  colors = colors

}
