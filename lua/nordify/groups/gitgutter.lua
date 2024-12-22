local M = {}

M.url = "https://github.com/airblade/vim-gitgutter"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        GitGutterAdd = { fg = c.aurora.green },
        GitGutterChange = { fg = c.aurora.yellow },
        GitGutterDelete = { fg = c.aurora.red },
    }
end

return M
