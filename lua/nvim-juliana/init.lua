local theme = require('nvim-juliana.theme')

local load = function()
    if vim.g.colors_name then
        vim.cmd('hi clear')
    end

    vim.cmd('highlight clear')
    vim.cmd('set t_Co=256')
    vim.g.colors_name = 'juliana'

    local nvim_set_hl = vim.api.nvim_set_hl
    for group, attrs in pairs(theme) do
        nvim_set_hl(0, group, attrs)
    end

end

return {
    load = load,
    colors = require('nvim-juliana.colors')
}
