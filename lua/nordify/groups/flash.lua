local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type Nordify.HighlightsFn
function M.get(c)
    return {
        FlashMatch = { bg = c.polar_night.bright, fg = c.snow_storm.origin },
        FlashCurrent = { bg = c.polar_night.brighter, fg = c.snow_storm.origin, underline = true },
        FlashLabel = { bg = c.aurora.yellow, fg = c.polar_night.origin, bold = true },
    }
end

return M
