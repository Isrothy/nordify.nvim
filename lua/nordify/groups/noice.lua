local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        NoiceLspProgressClient = { fg = c.ac0, italic = true },
        NoiceLspProgressTitle = { fg = c.fg0 },
        NoiceMini = { bg = c.bg1 },
    }
end

return M
