local M = {}

M.url = "https://github.com/isakbm/gitgraph.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        GitGraphHash = { fg = c.aurora.purple },
        GitGraphTimestamp = { fg = c.frost.ice },
        GitGraphAuthor = { fg = c.aurora.green },
        GitGraphBranchName = { fg = c.aurora.red },
        GitGraphBranchTag = { fg = c.aurora.yellow },
        GitGraphBranchMsg = { fg = c.fg0 },
        GitGraphBranch1 = { fg = c.frost.artic_ocean },
        GitGraphBranch2 = { fg = c.aurora.green },
        GitGraphBranch3 = { fg = c.aurora.red },
        GitGraphBranch4 = { fg = c.aurora.yellow },
        GitGraphBranch5 = { fg = c.frost.ice },
    }
end

return M
