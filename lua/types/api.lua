---@meta

---@class AutoCommand
---@field group? integer | string
---@field pattern? string|string[]
---@field buffer? integer
---@field desc? string
---@field callback string|fun(args: {id: number, event: string, group: number|nil, match: string, buf: number, file:string})
---@field command ? string
---@field once ? boolean
---@field nested ? boolean

---Create an `autocommand`
---@param event string|string[]
---@param opts AutoCommand
function vim.api.nvim_create_autocmd(event, opts) end

-- Create or get an autocommand group |autocmd-groups|.
--- @param name string: String: The name of the group
--- @param opts { clear?: boolean }
--- @return integer: Id of the created group.
function vim.api.nvim_create_augroup(name, opts) end

--- Create a new user command user-commands
---@param name string: Upper case
---@param command string|fun(tbl?: {})
---@param opts {desc?: string, force?: boolean, preview?: function}
function vim.api.nvim_create_user_command(name, command, opts) end
