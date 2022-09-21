vim = require('vim.shared')
vim = require('vim.uri')
vim = require('vim.inspect')
vim.lsp = require('vim.lsp')
vim.ui = require('vim.ui')
vim.treesitter = require('vim.treesitter')
vim.highlight = require('vim.highlight')
vim.diagnostic = require('vim.diagnostic')

vim.log = {
  levels = {
    TRACE = 0,
    DEBUG = 1,
    INFO = 2,
    WARN = 3,
    ERROR = 4,
  },
}

---Splits a string at each instance of a separator.
---@param s string - String to split
---@param sep string - Separator or pattern
---@param kwargs? {plain: boolean, trimempty: boolean} - @see *vim.split()*
---@return table: List of split components
function vim.split(s, sep, kwargs) end

---Splits a string at each instance of a separator.
---@param s string - String to split
---@param sep string - Separator or pattern
---@param plain boolean - If `true` use `sep` literally (passed to string.find)
---@return function: Iterator over the split components
function vim.gsplit(s, sep, plain) end

---Add a new mapping
---@param mode string|string[]
---@param lhs string
---@param rhs string|function
---@param opts { replace_keycodes?: boolean, buffer?: number|boolean, remap?: boolean }
function vim.keymap.set(mode, lhs, rhs, opts) end

---Execute Vim script commands.
---@param command string|table
function vim.cmd(command) end
