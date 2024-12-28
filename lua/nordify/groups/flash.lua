local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type Nordify.HighlightsFn
function M.get(c)
    return {
        FlashMatch = { bg = c.bg1, fg = c.fg0 },
        FlashCurrent = { bg = c.bg2, fg = c.fg0, underline = true },
        FlashLabel = { bg = c.aurora.yellow, fg = c.fg0, bold = true },
    }
end

return M
