local M = {}

M.url = "https://github.com/folke/trouble.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        TroubleText = { fg = c.snow_storm.origin },
        TroubleCount = { fg = c.frost.ice, bg = c.polar_night.brightest },
        TroubleNormal = { fg = c.snow_storm.origin, bg = c.none },
        TroubleIndent = { fg = c.polar_night.light, bg = c.none },
        TroubleLocation = { fg = c.polar_night.light, bg = c.none },
    }
end

return M
