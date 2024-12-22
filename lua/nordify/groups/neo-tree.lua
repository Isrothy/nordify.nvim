local M = {}

M.url = "https://github.com/kyazdani42/nvim-tree.lua"

---@type Nordify.HighlightsFn
function M.get(c)
    return {
        NeoTreeDimText = { fg = c.polar_night.brightest },
        NeoTreeDirectoryIcon = { fg = c.frost.artic_water },
        NeoTreeDirectoryName = { fg = c.snow_storm.origin },
        NeoTreeDotfile = { fg = c.polar_night.light },
        NeoTreeFadeText1 = { fg = c.polar_night.brightest },
        NeoTreeFadeText2 = { fg = c.polar_night.brighter },
        NeoTreeFileIcon = { fg = c.snow_storm.origin },
        NeoTreeFileName = { fg = c.snow_storm.origin },
        NeoTreeGitUnstaged = { fg = c.aurora.orange, italic = true },
        NeoTreeGitUntracked = { fg = c.aurora.green, italic = true },
        NeoTreeGitConflict = { fg = c.aurora.red },
        NeoTreeIndentMarker = { fg = c.polar_night.brighter },
        NeoTreeMessage = { fg = c.polar_night.brightest, italic = true },
        NeoTreeModified = { fg = c.aurora.yellow },
        NeoTreeRootName = { fg = c.snow_storm.origin, bold = true },
        NeoTreeSymbolicLinkTarget = { fg = c.frost.artic_water },
        NeoTreeTabActive = { fg = c.snow_storm.origin, bg = c.polar_night.brighter, bold = true },
        NeoTreeTabInactive = { fg = c.polar_night.light, bg = c.polar_night.origin },
        NeoTreeTabSeparatorActive = { fg = c.polar_night.brighter, bg = c.polar_night.origin },
        NeoTreeTabSeparatorInactive = { fg = c.polar_night.origin, bg = c.polar_night.origin },
    }
end

return M
