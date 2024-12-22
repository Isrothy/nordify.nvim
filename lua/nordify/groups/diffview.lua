local M = {}

M.url = "https://github.com/sindrets/diffview.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        DiffviewFilePanelInsertions = { fg = c.aurora.green },
        DiffviewFilePanelDeletions = { fg = c.aurora.red },
        DiffviewStatusModified = { fg = c.aurora.yellow },
    }
end

return M
