local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type Nordify.HighlightsFn
M.get = function(c, _)
    return {
        CmpItemAbbrDeprecated = { fg = c.polar_night.light },
        CmpItemAbbrMatch = { fg = c.frost.ice, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = c.frost.ice, bold = true },
        CmpItemKind = { fg = c.frost.artic_water },
        CmpItemKindVariable = { fg = c.frost.ice },
        CmpItemKindInterface = { fg = c.frost.ice },
        CmpItemKindClass = { fg = c.frost.ice },
        CmpItemKindFunction = { fg = c.aurora.purple },
        CmpItemKindMethod = { fg = c.aurora.purple },
        CmpItemKindSnippet = { fg = c.aurora.green },
        CmpItemKindText = { fg = c.snow_storm.origin },
    }
end

return M
