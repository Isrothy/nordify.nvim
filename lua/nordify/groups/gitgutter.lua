local M = {}

M.url = "https://github.com/airblade/vim-gitgutter"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        GitGutterAdd = { fg = c.git_add },
        GitGutterChange = { fg = c.git_change },
        GitGutterDelete = { fg = c.git_delete },
    }
end

return M
