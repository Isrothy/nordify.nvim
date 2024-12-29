local M = {}

M.url = "https://github.com/TimUntersberger/neogit"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        NeogitDiffAdd = { fg = c.git_add, bg = c.bg1 },
        NeogitDiffAddHighlight = { fg = c.git_add, bg = c.bg1 },
        NeogitDiffChange = { fg = c.git_change, bg = c.bg1 },
        NeogitDiffDelete = { fg = c.git_delete, bg = c.bg1 },
        NeogitDiffDeleteHighlight = { fg = c.git_delete, bg = c.bg1 },
        NeogitDiffText = { fg = c.git_text, bg = c.bg1 },
        NeogitContextHighlight = { fg = c.git_text, bg = c.bg1 },
        NeogitDiffContextHighlight = { fg = c.git_text, bg = c.bg1 },
        NeogitHunkHeader = { fg = c.fg0, bg = c.bg3 },
        NeogitDiffAddCursor = { fg = c.git_add, bg = c.bg0 },
        NeogitDiffDeleteCursor = { fg = c.git_delete, bg = c.bg0 },
        NeogitDiffContext = { fg = c.git_text, bg = c.bg0 },
        NeogitDiffContextCursor = { fg = c.git_text, bg = c.bg0 },
    }
end

return M
