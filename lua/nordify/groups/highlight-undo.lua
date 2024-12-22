local M = {}

M.url = "https://github.com/tzachar/highlight-undo.nvim"

---@type Nordify.HighlightsFn
M.get = function()
    return {
        HighlightUndo = { link = "Search" },
        HighlightRedo = { link = "Search" },
    }
end

return M
