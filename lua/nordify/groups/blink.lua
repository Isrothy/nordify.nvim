local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type Nordify.HighlightsFn
M.get = function(c, _)
    return {
        BlinkCmpLabelDeprecated = { fg = c.polar_night.light },
        BlinkCmpLabelMatch = { fg = c.frost.ice, bold = true },
        BlinkCmpKind = { fg = c.frost.artic_water },
        BlinkCmpKindVariable = { fg = c.frost.ice },
        BlinkCmpKindInterface = { fg = c.frost.ice },
        BlinkCmpKindClass = { fg = c.frost.ice },
        BlinkCmpKindFunction = { fg = c.aurora.purple },
        BlinkCmpKindMethod = { fg = c.aurora.purple },
        BlinkCmpKindSnippet = { fg = c.aurora.green },
        BlinkCmpKindText = { fg = c.snow_storm.origin },
    }
end

return M
