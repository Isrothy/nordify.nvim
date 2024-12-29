local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        GitSignsAdd = { fg = c.git_add },
        GitSignsAddNr = { fg = c.git_add },
        GitSignsAddLn = { fg = c.git_add },
        GitSignsChange = { fg = c.git_change },
        GitSignsChangeNr = { fg = c.git_change },
        GitSignsChangeLn = { fg = c.git_change },
        GitSignsDelete = { fg = c.git_delete },
        GitSignsDeleteNr = { fg = c.git_delete },
        GitSignsDeleteLn = { fg = c.git_delete },
        GitSignsCurrentLineBlame = { fg = c.fg3 },
    }
end

return M
