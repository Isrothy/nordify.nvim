local M = {}

M.url = "https://github.com/kyazdani42/nvim-tree.lua"

---@type Nordify.HighlightsFn
function M.get(c)
    return {
        NeoTreeDimText = { fg = c.fg2 },
        NeoTreeDirectoryIcon = { fg = c.ac1 },
        NeoTreeDirectoryName = { fg = c.fg0 },
        NeoTreeDotfile = { fg = c.fg3 },
        NeoTreeFadeText1 = { fg = c.fg2 },
        NeoTreeFadeText2 = { fg = c.fg1 },
        NeoTreeFileIcon = { fg = c.fg0 },
        NeoTreeFileName = { fg = c.fg0 },
        NeoTreeGitUnstaged = { fg = c.aurora.orange, italic = true },
        NeoTreeGitUntracked = { fg = c.aurora.green, italic = true },
        NeoTreeGitConflict = { fg = c.aurora.red },
        NeoTreeIndentMarker = { fg = c.fg1 },
        NeoTreeMessage = { fg = c.fg4, italic = true },
        NeoTreeModified = { fg = c.aurora.yellow },
        NeoTreeRootName = { fg = c.fg0, bold = true },
        NeoTreeSymbolicLinkTarget = { fg = c.ac1 },
        NeoTreeTabActive = { fg = c.fg0, bg = c.bg2, bold = true },
        NeoTreeTabInactive = { fg = c.fg3, bg = c.bg0 },
        NeoTreeTabSeparatorActive = { fg = c.fg5, bg = c.bg0 },
        NeoTreeTabSeparatorInactive = { fg = c.bg0, bg = c.bg0 },
    }
end

return M
