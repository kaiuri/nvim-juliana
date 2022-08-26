---@meta

---Return the basename of the given file or directory
---@param file string File or directory
---@return string: Basename of file
function vim.fs.basename(file) end

---Return an iterator over the files and directories located in path.
---@param path string - An absolute or relative path to the directory to iterate over. The path is first normalized with vim.fs.normalize().
---@return function - An iterator over the files and directories located in path, @see *vim.fs.dir()*
function vim.fs.dir(path) end

---Return the parent directory of the given file or directory
---@param file string - File or directory
---@return string:  parent directory of {file}
function vim.fs.dirname(file) end

--- Find files or directories in the given path.
---@param names string|table - Names of the files and directories to find. Must be base names, paths and globs are not supported.
---@param opts { path?: string, upward?: boolean, stop?: string, type?: string, limit?: number|1,  }
---@return table: the paths of all matching files or directories
function vim.fs.find(names, opts) end

--- Normalize a path to a standard format. A tilde `~` character at the beginning of the path is expanded to the user's home directory and any backslash `\` characters are converted to forward slashes `/`. Environment variables are also expanded.
---@param path string: Path to normalize
---@return string:  normalized path
function vim.fs.normalize(path) end

--- Iterate over all the parents of the given file or directory.
---@param start string: initial file or directory.
---@return function: iterator
function vim.fs.parents(start) end
