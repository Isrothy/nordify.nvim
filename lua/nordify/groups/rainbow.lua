local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

---@type Nordify.HighlightsFn
function M.get(c)
    return {
        RainbowDelimiterRed = { fg = c.aurora.red },
        RainbowDelimiterYellow = { fg = c.aurora.yellow },
        RainbowDelimiterBlue = { fg = c.frost.artic_ocean },
        RainbowDelimiterOrange = { fg = c.aurora.green },
        RainbowDelimiterGreen = { fg = c.aurora.orange },
        RainbowDelimiterCyan = { fg = c.frost.ice },
        RainbowDelimiterViolet = { fg = c.aurora.purple },
    }
end

return M
