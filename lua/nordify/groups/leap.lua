local M = {}

M.url = "https://github.com/ggandor/leap.nvim"

---@type Nordify.HighlightsFn
function M.get(c)
    return {
        LeapMatch = { fg = c.polar_night.bright, bg = c.frost.polar_water, bold = true, nocombine = true },
        LeapLabelPrimary = { fg = c.polar_night.bright, bg = c.aurora.green, bold = true, nocombine = true },
        LeapLabelSecondary = { fg = c.polar_night.bright, bg = c.aurora.purple, bold = true, nocombine = true },
        LeapLabelSelected = { fg = c.polar_night.bright, bg = c.aurora.yellow, bold = true, nocombine = true },
    }
end

return M
