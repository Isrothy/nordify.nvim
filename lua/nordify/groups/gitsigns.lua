local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        GitSignsAdd = { fg = c.aurora.green },
        GitSignsAddNr = { fg = c.aurora.green },
        GitSignsAddLn = { fg = c.aurora.green },
        GitSignsChange = { fg = c.aurora.yellow },
        GitSignsChangeNr = { fg = c.aurora.yellow },
        GitSignsChangeLn = { fg = c.aurora.yellow },
        GitSignsDelete = { fg = c.aurora.red },
        GitSignsDeleteNr = { fg = c.aurora.red },
        GitSignsDeleteLn = { fg = c.aurora.red },
        GitSignsCurrentLineBlame = { fg = c.polar_night.light },
    }
end

return M
