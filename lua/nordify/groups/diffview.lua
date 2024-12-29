local M = {}

M.url = "https://github.com/sindrets/diffview.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        DiffviewFilePanelInsertions = { fg = c.git_add },
        DiffviewFilePanelDeletions = { fg = c.git_delete },
        DiffviewStatusModified = { fg = c.git_change },
    }
end

return M
