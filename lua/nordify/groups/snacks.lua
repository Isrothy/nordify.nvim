local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type Nordify.HighlightsFn
M.get = function()
    return {
        SnacksDashboardDir = { link = "Comment" },
        SnacksPickerTotals = { link = "Comment" },
        SnacksPickerDir = { link = "Comment" },
        SnacksPickerBufFlags = { link = "Comment" },
        SnacksPickerKeymapRhs = { link = "Comment" },
        SnacksPickerGitStatus = { link = "Comment" },
    }
end

return M
