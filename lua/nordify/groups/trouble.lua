local M = {}

M.url = "https://github.com/folke/trouble.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        TroubleText = { fg = c.fg0 },
        TroubleCount = { fg = c.ac0, bg = c.bg3 },
        TroubleNormal = { fg = c.fg0, bg = c.none },
        TroubleIndent = { fg = c.fg3, bg = c.none },
        TroubleLocation = { fg = c.fg3, bg = c.none },
    }
end

return M
