local M = {}

M.url = "https://github.com/DNLHC/glance.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        GlancePreviewNormal = { bg = c.polar_night.origin },
        GlancePreviewBorderBottom = { fg = c.polar_night.bright, bg = c.polar_night.origin },
        GlanceBorderTop = { link = "GlancePreviewBorderBottom" },
        GlancePreviewMatch = { bg = c.polar_night.brightest },
        GlancePreviewEndOfBuffer = { bg = c.polar_night.origin },
        GlancePreviewCursorLine = { link = "CursorLine" },
        GlancePreviewSignColumn = { link = "SignColumn" },
        GlancePreviewLineNr = { link = "LineNr" },

        GlanceWinBarFilename = { fg = c.frost.polar_water, bg = c.polar_night.brighter },
        GlanceWinBarFilepath = { fg = c.snow_storm.origin, bg = c.polar_night.brighter },
        GlanceWinBarTitle = { fg = c.snow_storm.origin, bg = c.polar_night.brighter },

        GlanceListNormal = { bg = c.polar_night.bright },
        GlanceListFilename = { fg = c.frost.polar_water },
        GlanceListBorderBottom = { link = "GlancePreviewBorderBottom" },
        GlanceListMatch = { bg = c.polar_night.brightest },
        GlanceListCursorLine = { bg = c.polar_night.brighter },
        GlanceListFilepath = { fg = c.polar_night.light },
        GlanceListCount = { fg = c.aurora.purple },
        GlanceFoldIcon = { fg = c.snow_storm.origin },
        GlanceListEndOfBuffer = { bg = c.polar_night.bright },
        GlanceIndent = { fg = c.polar_night.brightest },
    }
end

return M
