---@class SublimeTextPalette
---@field blue2 string: '#46525c'
---@field blue3 string: '#303841'
---@field blue5 string: '#5fb4b4'
---@field blue6 string: '#a6acb8'
---@field blue_vibrant string: '#5c99d6'
---@field gray string: '#333333'
---@field green string: '#99c794'
---@field orange string: '#f9ae58'
---@field orange3 string: '#fac761'
---@field pink string: '#cc8ec6'
---@field red string: '#ec5f66'
---@field red2 string: '#f97b58'
---@field white string: '#ffffff'
---@field white3 string: '#d5dee6'
local p = require('nvim-juliana.palette')

--- Add an extra background
p.bg_extra = '#272e35'

local background = p.blue3
local foreground = p.white3
local selection = p.blue2

local error = p.red
local hint = p.orange3
local info = p.blue5
local warn = p.orange

--- reference https://github.com/nvim-treesitter/nvim-treesitter/blob/master/lua/nvim-treesitter/highlight.lua
--- TODO: Add support for everything in there.
local hl_groups = {

  --- Modes
  Normal = { fg = foreground, bg = background },
  Visual = { bg = selection },

  --- UI
  NormalFloat = { bg = p.bg_extra },
  FloatBorder = { fg = '#7999B9', bg = background },

  Pmenu = { bg = p.bg_extra },
  PmenuSbar = { fg = p.blue2 },
  PmenuSel = { bg = p.blue3, bold = true },
  PmenuThumb = { bg = '#58657E' },

  NonText = { fg = p.blue2 },

  ColorColumn = { fg = '#CBD3E2', bg = '#2B333B' },

  Conceal = { fg = p.blue6 },

  CursorLine = { bg = '#38424c' },
  CursorColumn = { link = 'CursorLine' },

  CursorLineNr = { link = 'LineNr' },

  DiffAdd = { sp = p.green, underdotted = true },
  DiffChange = { sp = p.red, underdotted = true },
  DiffDelete = { fg = p.blue6 },
  DiffText = { italic = true },

  Directory = { fg = p.blue5 },
  EndOfBuffer = { fg = '#2B333B' },
  Error = { fg = p.red2 },
  ErrorMsg = { fg = p.red },
  Exception = { fg = p.pink },

  -- Folds
  Folded = { fg = p.blue6 },
  FoldColumn = { bg = background },

  LineNr = { link = 'Visual' },
  LineNrAbove = { fg = p.blue6 },
  LineNrBelow = { link = 'LineNrAbove' },

  ModeMsg = { fg = '#DEE1E8' },
  MoreMsg = { fg = '#DEE1E8', bold = true },
  Question = { link = 'MoreMsg' },

  Search = { link = 'Visual' },
  IncSearch = { link = 'Search' },

  SignColumn = { fg = foreground, bg = background },
  SpellBad = { sp = p.red, undercurl = true },
  SpellCap = { sp = p.orange, undercurl = true },
  SpellLocal = { sp = p.blue5, undercurl = true },
  SpellRare = { sp = p.pink, undercurl = true },
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

  DiagnosticVirtualTextError = { bg = p.bg_extra, fg = error },
  DiagnosticVirtualTextWarn = { bg = p.bg_extra, fg = warn },
  DiagnosticVirtualTextInfo = { bg = p.bg_extra, fg = info },
  DiagnosticVirtualTextHint = { bg = p.bg_extra, fg = hint },

  -- VimSyntax hl-groups

  Boolean = { fg = p.red, italic = true },
  MatchParen = { bold = true },

  Character = { fg = p.green },

  String = { fg = p.green },
  Comment = { fg = p.blue6 },
  Conditional = { fg = p.pink },
  Constant = { fg = p.orange },
  Define = { fg = p.pink, italic = true },

  Delimiter = { fg = p.blue6 },
  Float = { link = 'Number' },
  Function = { fg = p.blue5 },
  Identifier = { fg = foreground },
  Include = { fg = '#7999B9' },

  Keyword = { fg = p.pink, italic = true },

  Label = { fg = p.pink },
  Macro = { fg = '#8DADE7' },
  Number = { fg = p.orange },
  Operator = { fg = p.red2 },
  PreCondit = { link = 'Include' },
  PreProc = { fg = '#A7B4CD' },
  Repeat = { fg = p.pink },

  Special = { fg = p.blue5 },

  SpecialChar = { fg = p.blue5 },

  SpecialComment = { fg = '#788797', underline = true },
  SpecialKey = { fg = p.blue5 },
  Statement = { fg = p.pink },
  StorageClass = { fg = p.red },
  Structure = { link = 'StorageClass' },
  Struct = { link = 'Structure' },
  Tag = { fg = p.red },
  Title = { fg = foreground, bold = true },
  Todo = { fg = p.blue_vibrant, bold = true },
  Type = { fg = p.orange },
  Typedef = { link = 'Structure' },
  Underlined = { underdotted = true },
  Whitespace = { fg = '#5C75A3' },

  -- TS-hl globals

  TSPunctBracket = { link = 'Delimiter' },
  TSPunctDelimiter = { link = 'Delimiter' },
  TSPunctSpecial = { fg = p.blue5 },

  TSConstant = { link = 'Constant' },
  TSConstBuiltin = { fg = p.red, italic = true },
  TSConstMacro = { link = 'Define' },
  TSString = { link = 'String' },

  TSStringRegex = { fg = p.blue5 },
  TSStringEscape = { link = 'SpecialChar' },
  TSStringSpecial = { link = 'SpecialChar' },

  TSCharacter = { link = 'Character' },
  TSCharacterSpecial = { link = 'SpecialChar' },

  TSNumber = { link = 'Number' },
  TSBoolean = { link = 'Boolean' },
  TSFloat = { link = 'Float' },

  TSFunction = { link = 'Function' },
  TSFunctionCall = { link = 'TSFunction' },
  TSFuncBuiltin = { fg = p.blue_vibrant },
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
  TSDanger = { fg = p.red, bold = true },
  TSEmphasis = { italic = true },
  TSEnum = { link = 'TSType' },
  TSError = { fg = foreground },
  TSInclude = { fg = p.pink },
  TSInterface = { link = 'TSType' },
  TSKeyword = { link = 'Keyword' },
  TSKeywordFunction = { fg = p.pink, italic = true },
  TSKeywordOperator = { link = 'TSOperator' },
  TSKeywordReturn = { link = 'TSKeyword' },
  TSLabel = { fg = p.blue5 },
  TSNamespace = { fg = p.orange },
  TSNote = { fg = p.green, bold = true },
  TSOperator = { link = 'Operator' },
  TSProperty = { fg = '#95B2D6' },
  TSStrong = { bold = true },
  TSSymbol = { fg = '#7EBFC4' },
  TSTag = { link = 'Tag' },
  TSTagAttribute = { fg = p.pink },
  TSTagDelimiter = { fg = p.blue5 },
  TSText = { fg = foreground },
  TSTextReference = { fg = foreground, underdotted = true },

  TSTitle = { link = 'Title' },

  TSTodo = { link = 'Todo' },
  TSType = { link = 'Type' },
  TSTypeBuiltin = { fg = p.blue_vibrant, italic = true },
  TSTypeQualifier = { fg = p.red },
  TSURI = { fg = p.blue5, underdotted = true },
  TSUnderline = { underline = true },
  TSVariable = { fg = foreground },
  TSVariableBuiltin = { fg = p.red, italic = true },
  TSWarning = { fg = p.orange, bold = true },

  --- HTML
  htmlTagName = { link = 'Tag' },
  --- commentTS
  commentTSConstant = { fg = '#8C99A6' },

  -- git.vim

  gitCommitSelectedFile = { italic = true },
  gitCommitSummary = { bold = true },
  gitCommitTrailerToken = { fg = p.pink, italic = true },

  --- health.vim
  healthHelp = { fg = p.orange3 },
  healthSuccess = { fg = p.green },

  -- luaTS
  luaTSConstructor = { link = 'TSPunctBracket' },
  luaTable = { link = 'TSPunctBracket' },

  -- markdownTS
  markdownTSPunctSpecial = { fg = p.red2, bold = true },

  --- quickfix.vim
  qfFileName = { fg = p.blue5 },
  qfLineNr = { bold = true },

  -- RUST
  rustTSConstBuiltin = { link = 'TSConstant', italic = true },
  rustTSField = { fg = '#CBD3E2' },
  rustTSFuncMacro = { fg = p.blue_vibrant },
  rustTSFunction = { fg = p.blue5 },
  rustTSKeyword = { fg = p.pink },
  rustTSOperator = { link = 'TSOperator' },
  rustTSPunctBracket = { fg = '#CBD3E2' },
  rustTSPunctDelimiter = { fg = p.blue6 },
  rustTSType = { fg = p.orange },
  rustTSTypeBuiltin = { fg = p.pink, italic = true },

  -- golangTS

  goTSKeyword = { fg = p.red },
  goTSType = { fg = p.blue5 },
  goTSFunction = { link = 'TSFunction' },
  goTSNamespace = { link = 'TSNamespace' },

  -- tmux

  tmuxCommands = { fg = p.pink },
  tmuxFlags = { fg = p.orange },
  tmuxFormatString = { fg = p.blue5 },

  -- typescriptTS

  typescriptTSFunction = { link = 'Function' },
  typescriptTSConstructor = { fg = p.orange },
  typescriptTSOperator = { link = 'TSOperator' },
  typescriptTSParameter = { link = 'TSVariable' },
  typescriptTSType = { fg = p.blue5 },
  typescriptTSKeyword = { fg = '#ec5f89', italic = true },
  -- typescriptTSPunctSpecial = { fg = colors.red },
  --- JavaScript
  jsdocTSKeyword = { link = 'typescriptType' },
  javaScriptReserved = { fg = p.red },

  --- fennelTS

  fennelTSFuncMacro = { link = 'TSKeywordFunction' },
  fennelTSField = { link = 'TSField' },
  --- CSS
  cssTSType = { fg = p.blue5 },

  -- fennel.vim
  FennelStringDelimiter = { fg = p.blue5 },
  FennelParen = { link = 'TSPunctBracket' },
  FennelSpecialForm = { fg = p.pink, italic = true },
  FennelKeyword = { link = 'clojureTSKeyword' },
  FennelTable = { link = 'luaTSPunctDelimiter' },

  --- clojureTS
  clojureTSKeywordFunction = { fg = p.red },
  clojureTSKeyword = { fg = p.red },
  clojureTSSymbol = { fg = p.pink },

  clojureTSVariableBuiltin = { link = 'TSConstBuiltin' },
  clojureTSPunctSpecial = { fg = p.red2 },
  clojureTSFuncMacro = { fg = p.red2 },

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
  CmpItemKindClass = { fg = p.red },
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
  TroubleIndent = { bg = p.blue3 },
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
  LspStatic = { fg = p.orange },
  LspDeprecated = { strikethrough = true },
  -- LspAbstract = {},
  LspAsync = { fg = p.red },
  -- LspModification = {},
  -- LspDocumentation = {},
  LspDefaultLibrary = { fg = p.blue_vibrant },
}

local function set_hl(tbl)
  ---@type function
  local nvim_set_hl = vim.api.nvim_set_hl
  for group, attrs in pairs(tbl) do
    nvim_set_hl(0, group, attrs)
  end
end

local load = function()
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end

  vim.cmd('highlight clear')
  vim.cmd('set t_Co=256')
  vim.g.colors_name = 'juliana'

  set_hl(hl_groups)
end

return {
  load = load,
  colors = p
}
