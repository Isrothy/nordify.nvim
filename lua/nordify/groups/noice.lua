local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        NoiceLspProgressClient = { fg = c.frost.ice, italic = true },
        NoiceLspProgressTitle = { fg = c.snow_storm.origin },
        NoiceMini = { bg = c.polar_night.bright },
    }
end

return M
