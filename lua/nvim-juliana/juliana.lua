--# selene: allow(unscoped_variables)
--# selene: allow(undefined_variable)
local M = {}
-- stylua: ignore
local c = {
  black = '#333333',
  bg0 = '#272E35',
  bg1 = '#303841',
  gray0 = '#46525C',
  gray1 = '#A6ACB8',
  white0 = '#d5dee6',
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
local background = c.bg1
local foreground = c.white0
local selection = c.gray0
-- local find_highlight_foreground = c.gray0
-- local find_highlight = c.yellow

local error = c.red
local hint = c.yellow
local info = c.cyan
local warn = c.orange1

--- reference https://github.com/nvim-treesitter/nvim-treesitter/blob/master/lua/nvim-treesitter/highlight.lua
--- TODO: Add support for everything in there.
local highlights = {

  --- Modes
  Normal = { fg = foreground, bg = background },
  Visual = { bg = selection },

  --- UI
  NormalFloat = { bg = c.bg0 },
  FloatBorder = { fg = '#7999B9', bg = background },

  Pmenu = { bg = c.bg0 },
  PmenuSbar = { fg = c.gray0 },
  PmenuSel = { bg = c.bg1, bold = true },
  PmenuThumb = { bg = '#58657E' },

  NonText = { fg = c.gray0 },

  ColorColumn = { fg = '#CBD3E2', bg = '#2B333B' },

  Conceal = { fg = c.gray1 },

  CursorLine = { bg = '#38424c' },
  CursorColumn = { link = 'CursorLine' },

  CursorLineNr = { link = 'LineNr' },

  DiffAdd = { sp = c.green, underdotted = true },
  DiffChange = { sp = c.red, underdotted = true },
  DiffDelete = { fg = c.gray1 },
  DiffText = { italic = true },

  Directory = { fg = c.cyan },
  EndOfBuffer = { fg = '#2B333B' },
  Error = { fg = c.orange2 },
  ErrorMsg = { fg = c.red },
  Exception = { fg = c.pink },

  -- Folds
  Folded = { fg = c.gray1 },
  FoldColumn = { bg = background },

  LineNr = { link = 'Visual' },
  LineNrAbove = { fg = c.gray1 },
  LineNrBelow = { link = 'LineNrAbove' },

  ModeMsg = { fg = '#DEE1E8' },
  MoreMsg = { fg = '#DEE1E8', bold = true },
  Question = { link = 'MoreMsg' },

  Search = { link = 'Visual' },
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

  DiagnosticError = { fg = error, bold = true },
  DiagnosticHint = { fg = hint, bold = true },
  DiagnosticInfo = { fg = info, bold = true },
  DiagnosticWarn = { fg = warn, bold = true },
  DiagnosticUnderlineError = { sp = error, undercurl = true },
  DiagnosticUnderlineHint = { sp = hint, undercurl = true },
  DiagnosticUnderlineInfo = { sp = info, undercurl = true },
  DiagnosticUnderlineWarn = { sp = warn, undercurl = true },

  DiagnosticVirtualTextError = { bg = c.bg0, fg = c.error },
  DiagnosticVirtualTextWarn = { bg = c.bg0, fg = c.warn },
  DiagnosticVirtualTextInfo = { bg = c.bg0, fg = c.info },
  DiagnosticVirtualTextHint = { bg = c.bg0, fg = c.hint },

  -- VimSyntax hl-groups

  MatchParen = { bold = true },
  Boolean = { fg = c.red, italic = true },
  Character = { fg = c.green },
  String = { fg = c.green },
  Comment = { fg = c.gray1 },
  Conditional = { fg = c.pink },
  Constant = { link = 'TSConstant' },
  Define = { link = 'Macro' },
  Delimiter = { fg = c.gray1 },
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
  Structure = { link = 'StorageClass' },
  Struct = { link = 'Structure' },
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
  TSKeywordOperator = { link = 'Keyword' },
  TSKeywordReturn = { link = 'Keyword' },
  TSLabel = { fg = c.cyan },
  TSMethod = { link = 'Function' },

  TSType = { fg = c.orange1 },
  TSNamespace = { fg = c.orange1 },
  TSEnum = { link = 'TSType' },
  TSInterface = { link = 'TSType' },

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

  --- HTML
  htmlTagName = { link = 'Tag' },
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
  rustTSPunctDelimiter = { fg = c.gray1 },
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
  typescriptTSFunction = { link = 'Function' },
  typescriptTSConstructor = { fg = c.orange1 },
  typescriptTSOperator = { link = 'TSOperator' },
  typescriptTSParameter = { link = 'TSVariable' },
  typescriptTSType = { fg = c.cyan },
  typescriptTSKeyword = { fg = '#ec5f89', italic = true },
  -- typescriptTSPunctSpecial = { fg = colors.red },
  --- JavaScript
  jsdocTSKeyword = { link = 'typescriptType' },
  javaScriptReserved = { fg = c.red },

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
  NvimTreePopup = { fg = '#CBD3E2', bg = c.bg0 },

  --- gitsigns.nvim
  GitSignsDelete = { fg = c.red, bold = true },
  GitSignsChange = { fg = c.orange1, bold = true },
  GitSignsAdd = { fg = c.green, bold = true },

  --- vim.lsp
  LspReferenceText = { bg = '#38424c' },
  LspReferenceRead = { link = 'LspReferenceText' },
  LspReferenceWrite = { link = 'LspReferenceText' },

  --- Telescope
  TelescopeBorder = { link = 'NonText' },
  TelescopeTitle = { fg = foreground, bold = true },
  TelescopePromptCounter = { fg = foreground },
  TelescopeMatching = { bg = background },
  TelescopeSelectionCaret = { link = 'CursorLine' },

  --- dressing.nvim
  FloatTitle = { link = 'Comment' },

  ---  symbols-outline.nvim
  FocusedSymbol = { link = 'Visual' },

  -- Trouble
  TroubleIndent = { bg = c.bg1 },
  TroubleLocation = { bold = true },
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
