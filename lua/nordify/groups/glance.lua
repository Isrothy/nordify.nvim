local M = {}

M.url = "https://github.com/DNLHC/glance.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        GlancePreviewNormal = { bg = c.bg0 },
        GlancePreviewBorderBottom = { fg = c.bg1, bg = c.bg0 },
        GlanceBorderTop = { link = "GlancePreviewBorderBottom" },
        GlancePreviewMatch = { bg = c.bg3 },
        GlancePreviewEndOfBuffer = { bg = c.bg0 },
        GlancePreviewCursorLine = { link = "CursorLine" },
        GlancePreviewSignColumn = { link = "SignColumn" },
        GlancePreviewLineNr = { link = "LineNr" },

        GlanceWinBarFilename = { fg = c.frost.polar_water, bg = c.bg2 },
        GlanceWinBarFilepath = { fg = c.fg1, bg = c.bg2 },
        GlanceWinBarTitle = { fg = c.fg1, bg = c.bg2 },

        GlanceListNormal = { bg = c.bg1 },
        GlanceListFilename = { fg = c.frost.polar_water },
        GlanceListBorderBottom = { link = "GlancePreviewBorderBottom" },
        GlanceListMatch = { bg = c.bg3 },
        GlanceListCursorLine = { bg = c.bg2 },
        GlanceListFilepath = { fg = c.fg3 },
        GlanceListCount = { fg = c.aurora.purple },
        GlanceFoldIcon = { fg = c.fg0 },
        GlanceListEndOfBuffer = { bg = c.bg1 },
        GlanceIndent = { fg = c.fg4 },
    }
end

return M
