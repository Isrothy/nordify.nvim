local M = {}

M.url = "https://github.com/vigoux/notifier.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        NotifierTitle = { fg = c.frost.polar_water, bold = true },
        NotifierContentDim = { fg = c.fg3 },
    }
end

return M
