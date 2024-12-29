local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type Nordify.HighlightsFn
M.get = function(c, _)
    return {
        CmpItemAbbrDeprecated = { fg = c.fg3 },
        CmpItemAbbrMatch = { fg = c.ac0, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = c.ac0, bold = true },
        CmpItemKind = { fg = c.frost.artic_water },
        CmpItemKindVariable = { fg = c.frost.ice },
        CmpItemKindInterface = { fg = c.frost.ice },
        CmpItemKindClass = { fg = c.frost.ice },
        CmpItemKindFunction = { fg = c.aurora.purple },
        CmpItemKindMethod = { fg = c.aurora.purple },
        CmpItemKindSnippet = { fg = c.aurora.green },
        CmpItemKindText = { fg = c.fg0 },
    }
end

return M
