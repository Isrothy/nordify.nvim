local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        WhichKey = { fg = c.frost.ice, bold = true },
        WhichKeyGroup = { fg = c.frost.artic_water },
        WhichKeyDesc = { fg = c.snow_storm.origin },
        WhichKeyFloat = { bg = c.polar_night.bright },
    }
end

return M
