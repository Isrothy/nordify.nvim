local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        WhichKey = { fg = c.ac0, bold = true },
        WhichKeyGroup = { fg = c.ac1 },
        WhichKeyDesc = { fg = c.fg0 },
        WhichKeyFloat = { bg = c.bg1 },
    }
end

return M
