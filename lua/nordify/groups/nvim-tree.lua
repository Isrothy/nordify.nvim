local M = {}

M.url = "https://github.com/kyazdani42/nvim-tree.lua"

---@type Nordify.HighlightsFn
function M.get(c, config)
    return {
        NvimTreeNormal = { fg = c.fg0 },
        NvimTreeWinSeparator = { fg = config.borders and c.border0 or c.none },
        NvimTreeNormalNC = { fg = c.fg0 },
        NvimTreeRootFolder = { fg = c.fg0, bold = true },
        NvimTreeGitDirty = { fg = c.git_change },
        NvimTreeGitNew = { fg = c.git_add },
        NvimTreeGitDeleted = { fg = c.git_delete },
        NvimTreeGitIgnored = { fg = c.git_ignore },
        NvimTreeSpecialFile = { fg = c.aurora.yellow, underline = true },
        NvimTreeIndentMarker = { fg = c.ac1 },
        NvimTreeImageFile = { fg = c.fg0 },
        NvimTreeSymlink = { fg = c.ac1 },
        NvimTreeFolderIcon = { fg = c.ac1 },
        NvimTreeOpenedFolderName = { fg = c.fg0 },
    }
end

return M
